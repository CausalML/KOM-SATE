library(gurobi)
library(sbw)

set.seed(1234)



################################################################################
#FUNCTIONS GPML


#Gaussian kernel for minimization
Kgauss <- function(vect,x){
  #print("Gaussian kernel")
  x <- scale(x)
  Scale <- vect[2]^2
  B <-  exp( -(Scale) * as.matrix(dist(x, upper=T, diag=T))^2 )
  return(B)
}


Klinear <-  function(vect,x){
  xs <- scale(x)
  offset <- vect[2]
  B <- (xs%*%t(xs) + offset)
  return(B)
}

Kpoly <-  function(vect,x,degree){
  xs <- scale(x)
  offset <- vect[2]
  B <- (xs%*%t(xs) + offset)^degree
  return(B)
}


#Gaussian kernel for analysis
KGram <- function(vect,X,type_kernel,degree){

  if(type_kernel==0){
    K <- Kmatern(vect,X)
  }
  if(type_kernel==1){
    K <- Kgauss(vect,X)
  }
  if(type_kernel==2){
    K <- Klinear(vect,X)
  }
  if(type_kernel==3){
    K <- Kpoly(vect,X,degree)
  }
  return(K)

}

#minus log likelihood
minus_log_likelihood <- function(vect,X,Y,nte,type_kernel,degree){
  sn2 <- vect[3]^2
  gamma2 <- vect[1]^2
  #scale <- 1
  if(type_kernel==0){ K_plus <- Kmatern(vect,X) + sn2*diag(nte) }
  if(type_kernel==1){ K_plus <- gamma2*Kgauss(vect,X) + sn2*diag(nte) }
  if(type_kernel==2){ K_plus <- gamma2*Klinear(vect,X) + sn2*diag(nte) }
  if(type_kernel==3){ K_plus <- gamma2*Kpoly(vect,X,degree) + sn2*diag(nte) }
  K_plus_inv <- try(solve(K_plus, tol = 1e-21))
  if(class(K_plus_inv) != "try-error"){
    z <- determinant(K_plus, logarithm=TRUE)
    K_plus_log_det <- as.numeric((z$sign*z$modulus)) # log-determinant of K_plus
    out <- 0.5 * ( t(Y) %*% K_plus_inv %*% Y ) + 0.5 * K_plus_log_det + (nte/2)*log(2*pi)
  }
  return(out)
}



#######################################################
# KOW
#######################################################



KOM <- function(outcome,intervention,confounders,Type_kernel,hpara,GPML,degree){


  X <- confounders

  y <- outcome

  TT <- intervention

  t1 <-as.integer(TT)
  t0 <-as.integer((1-TT))

  n <- dim(X)[1]

  if(GPML == 1){

    #ht <- dta$Tr
    Xtemp <- data.frame(X,y,Tr)
    Xsample <- Xtemp
    #Xsample <- Xtemp[sample(nrow(Xtemp), n), ]

    X1 <- Xsample[which(Xsample$Tr==1),]
    X0 <- Xsample[which(Xsample$Tr==0),]

    y1 <- y[which(Xsample$Tr==1)]
    y0 <- y[which(Xsample$Tr==0)]

    n1 <- length(which(Xsample$Tr==1))
    n0 <- length(which(Xsample$Tr==0))

    # GPML optimization --- "L-BFGS-B" algorithm
    print("GPML Optimization")

    # GPML optimization --- "L-BFGS-B" algorithm

    tol <- 1e-08

    system_time_GPML0 <- system.time(res.optim2_0 <- try(optim(par=c(1, 1, 1),
                                                               fn=minus_log_likelihood,
                                                               method=c("L-BFGS-B"),
                                                               lower = rep(tol,3),
                                                               hessian=TRUE,
                                                               control=list(trace=0, maxit=1000),
                                                               X=X0[,1:(dim(X0)[2]-2)],
                                                               Y=y0,
                                                               nte=n0,
                                                               type_kernel=Type_kernel,
                                                               degree=degree)) )

    if(class(res.optim2_0) == "try-error"){
      res.optim2_0 <- list(par=c(1,1,1))
    }
    #res.optim2_0$par

    # #

    # Xsample <- Xtemp
    #
    # X1 <- Xsample[which(Xsample$Tr==1),]
    #
    # y1 <- y[which(Xsample$Tr==1)]
    #
    # n1 <- length(which(Xsample$Tr==1))

    system_time_GPML1 <- system.time( res.optim2_1 <- try(optim(par=c(1, 1, 1),
                                                                fn=minus_log_likelihood,
                                                                method=c("L-BFGS-B"),
                                                                lower = rep(tol,3),
                                                                hessian=TRUE,
                                                                control=list(trace=0, maxit=1000),
                                                                X=X1[,1:(dim(X1)[2]-2)],
                                                                Y=y1,
                                                                nte=n1,
                                                                type_kernel=Type_kernel,
                                                                degree=degree)) )

    #res.optim2_1$par
    if(class(res.optim2_1) == "try-error"){
      res.optim2_1 <- list(par=c(1,1,1))
    }

    if ((class(res.optim2_0) != "try-error") & (class(res.optim2_1) != "try-error")){
      res.optim2_0 <- list(par=c(res.optim2_0$par[1],res.optim2_0$par[2],res.optim2_0$par[3]))
      res.optim2_1 <- list(par=c(res.optim2_1$par[1],res.optim2_1$par[2],res.optim2_1$par[3]))
    }
  }#end if GPML

  if(GPML == 0){
    #lambda <- 10
    #print(paste("Hyperparameters are fixed: ", hyp1,hyp2,hyp3))

    res.optim2_0 <- list(par=c(hyp1[1],hyp2[1],hyp3[1]))
    res.optim2_1 <- list(par=c(hyp1[2],hyp2[2],hyp3[2]))
    #print(res.optim2_1)
  }

  #compute K
  GPML_run <- 0
  system_time_matrices <- system.time({
    # K1 <- res.optim2_1$par[1]^2*KGram(res.optim2_1$par,X,Type_kernel,degree)
    # K0 <- res.optim2_0$par[1]^2*KGram(res.optim2_0$par,X,Type_kernel,degree)
    K1 <- KGram(res.optim2_1$par,X,Type_kernel,degree)
    K0 <- KGram(res.optim2_0$par,X,Type_kernel,degree)

    gc()

    print("Building matrices")
    onesn <- rep(1/n,n)

    #Quadratic part
    # I1 K1 I1 + I0 K0 I0
    I1KI1 <- outer(t1, t1)*K1
    I0KI0 <- outer(t0, t0)*K0

    #Linear part
    # en^T K1 I1 + en^T K0 I0
    #K1 I1, K0 I0
    KI1 <- diag(t1)%*%K1
    KI0 <- diag(t0)%*%K0

    # en^T K1 I1, en^T K0 I0
    onesnKI1 <- t(onesn)%*%KI1
    onesnKI0 <- t(onesn)%*%KI0

    rm(list=c("K1","K0","KI1","KI0"))
    gc()

    ##########################################################
    # SATE
    #

    tol <- 1e-08

    # print(res.optim2_1$par)
    # print(res.optim2_0$par)

    # lambda1 <- res.optim2_1$par[3]^2/res.optim2_1$par[1]^2
    # lambda0 <- res.optim2_0$par[3]^2/res.optim2_0$par[1]^2

    lambda1 <- res.optim2_1$par[3]^2
    lambda0 <- res.optim2_0$par[3]^2

    # lambda1 <- lamda0 <- 0.001

    #lambda <- lambda1*diag(t1) + lambda0*diag(t0) +  2*sqrt(lambda1*lambda0)*diag(n)
    lambda <- lambda1*diag(t1) + lambda0*diag(t0)

    #Update Q
    Kcircl <- 0.5*( I1KI1 + I0KI0 + lambda )

    rm(list=c("I1KI1","I0KI0"))
    gc()

    #Update c
    #Gurobi:
    en_Kdiam <- -(onesnKI1 + onesnKI0)

  })#end system.time

  rm(list = c("onesnKI1","onesnKI0"))

  print("Solving QP")

  model <- list()
  model$A          <- matrix(c(((t1)/n),((t0)/n)), nrow=2, byrow=T)
  model$rhs        <- c(1,1)
  model$modelsense <- "min"
  model$Q          <- Kcircl
  model$obj        <- en_Kdiam
  model$sense      <- c("=")
  model$lb <- rep(tol,n)
  model$vtypes <- "C"


  params <- list(Presolve=2,OutputFlag=0,QCPDual=0)

  system_time_gurobi <- system.time(resg <- try(gurobi(model,params)))
  res <- resg

  if (class(res) != "try-error"){
    result <- list(res=res,kow=res$x, res.optim2_1_par = res.optim2_1$par,res.optim2_0_par = res.optim2_0$par, lambda0 = lambda0, lambda1 = lambda1,
                   system_time_GPML0=system_time_GPML0, system_time_GPML1=system_time_GPML1, system_time_gurobi=system_time_gurobi, system_time_matrices=system_time_matrices)
  }
  return(result)
}

