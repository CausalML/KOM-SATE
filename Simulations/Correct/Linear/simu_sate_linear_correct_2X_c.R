






rm(list = ls())

set.seed(17)
# install.packages("quadprog")
# install.packages("ipw")
# install.packages("sandwich")
library(gurobi)
#library(ipw)
library(sandwich)
library(sbw)
library(quadprog)
library(CBPS)


################################################################################
#FUNCTIONS SBW

sbw_result <- function(dta,degree,BAL_TOLS){

  if(degree==1){
    data_frame = as.data.frame(cbind(dta$Y, dta$Tr, dta$Z1, dta$Z2))
    names(data_frame) = c("y", "t", "Z1", "Z2")

    # Treatment indicator
    t_ind = "t"

    # Moment covariates
    bal_covs =c("Z1", "Z2")

    # Moment tolerances
    bal_tols = BAL_TOLS

    # Whether the moment tolerances are expressed in standard deviations
    bal_tols_sd = TRUE

    # Here, the 0's in t_ind are weighted to "represent" the 1's and estimate the average treatment on the treated
    target = "all"

    # Here, the "ell-2" norm is used to minimize the variance of the weights
    l_norm = "l_2"

    # Minimum value of the weights
    w_min = 0

    # Here, the weights are constrained to add up to one
    normalize = 1

    # Solver
    solver = "gurobi"

    # Output display
    display = 0

    # Find optimal weights
    #recovering the covariate structure of both the treated and control units
    #in the weighted CONTROL units
    out0 = sbw(data_frame, t_ind, bal_covs, bal_tols, bal_tols_sd, target, l_norm, w_min, normalize, solver, display)

    # data_frame_te = as.data.frame(cbind(dta$Y, dta$Tr, dta$Z1, dta$Z1))
    # names(data_frame_te) = c("y", "t", "Z1", "Z2")
    # sbw(data_frame_te, t_ind, c("Z1","Z2"), bal_tols, bal_tols_sd, target, l_norm, w_min, normalize, solver, display)$data_frame_weights$weights

    # data_sbw_final <- data.frame(dta$Tr,out0$data_frame_weights$weights)
    # colnames(data_sbw_final) <- c("Tr","sbw")
    data_sbw_final <- data.frame(rep(NA,1))
    colnames(data_sbw_final) <- c("sbw")
    if (out0$status=="OPTIMAL"){
      data_sbw_final <- data.frame(dta$Tr,out0$data_frame_weights$weights)
      colnames(data_sbw_final) <- c("Tr","sbw")
    }

    #recovering the covariate structure of both the treated and control units
    #in the weighted TREATED units
    t1 <- 1-dta$Tr

    data_frame2 = as.data.frame(cbind(dta$Y, t1, dta$Z1, dta$Z2))
    names(data_frame2) = c("y", "t1", "Z1", "Z2")
    data_frame2 <- data_frame2[order(data_frame2$t1),]

    out1 = sbw(data_frame2, "t1", bal_covs, bal_tols, bal_tols_sd, target, l_norm, w_min, normalize, solver, display)
    #out1$data_frame_weights$weights

    #out1$data_frame_weights$weights[which(data_sbw_final$sbw==0)]
    #head(data_sbw_final)

    # data_temp <- as.data.frame(cbind(data_frame2$t1,out1$data_frame_weights$weights))
    # data_temp <- data_temp[order(data_temp$V1,decreasing = TRUE),]
    #data_sbw_final$sbw[which(data_sbw_final$Tr==1)] <- out1$data_frame_weights$weights[which(out1$data_frame_weights$weights!=0)]

    if (out1$status=="OPTIMAL" ){
      data_sbw_final$sbw[which(data_sbw_final$Tr==1)] <- out1$data_frame_weights$weights[which(out1$data_frame_weights$weights!=0)]
    }

    sbw_counter <- 0
    sbw_counter2 <- 0
    if (out0$status!="OPTIMAL" | out1$status!="OPTIMAL"){ sbw_counter <- 1}

  }#end if degree 1

  if(degree==2){
    data_frame = as.data.frame(cbind(dta$Y, dta$Tr, dta$Z1, dta$Z2,
                                     dta$Z1*dta$Z2,
                                     dta$Z1^2,dta$Z2^2,
                                     dta$Z1^3,dta$Z2^3,
                                     dta$Z1*dta$Z2^2,dta$Z2*dta$Z1^2))
    names(data_frame) = c("y", "t", "Z1", "Z2",
                          "Z1Z2",
                          "Z1_2","Z2_2",
                          "Z1_3","Z2_3",
                          "Z1Z2_2","Z2Z1_2")


    # Treatment indicator
    t_ind = "t"

    # Moment covariates
    bal_covs =c("Z1", "Z2",
                "Z1Z2",
                "Z1_2","Z2_2",
                "Z1_3","Z2_3",
                "Z1Z2_2","Z2Z1_2")

    # Moment tolerances
    bal_tols = BAL_TOLS

    # Whether the moment tolerances are expressed in standard deviations
    bal_tols_sd = TRUE

    # Here, the 0's in t_ind are weighted to "represent" the 1's and estimate the average treatment on the treated
    target = "all"

    # Here, the "ell-2" norm is used to minimize the variance of the weights
    l_norm = "l_2"

    # Minimum value of the weights
    w_min = 0

    # Here, the weights are constrained to add up to one
    normalize = 1

    # Solver
    solver = "gurobi"

    # Output display
    display = 0

    # Find optimal weights
    #recovering the covariate structure of both the treated and control units
    #in the weighted CONTROL units
    out0 = try(sbw(data_frame, t_ind, bal_covs, bal_tols, bal_tols_sd, target, l_norm, w_min, normalize, solver, display))
    print(out0$status)

    data_sbw_final <- data.frame(rep(NA,1))
    colnames(data_sbw_final) <- c("sbw")

    if (out0$status=="OPTIMAL"){
      data_sbw_final <- data.frame(dta$Tr,out0$data_frame_weights$weights)
      colnames(data_sbw_final) <- c("Tr","sbw")
    }

    # data_frame_te = as.data.frame(cbind(dta$Y, dta$Tr, dta$Z1, dta$Z1))
    # names(data_frame_te) = c("y", "t", "Z1", "Z2")
    # sbw(data_frame_te, t_ind, c("Z1","Z2"), bal_tols, bal_tols_sd, target, l_norm, w_min, normalize, solver, display)$data_frame_weights$weights

    #recovering the covariate structure of both the treated and control units
    #in the weighted TREATED units
    t1 <- 1-dta$Tr

    data_frame2 = as.data.frame(cbind(dta$Y, t1, dta$Z1, dta$Z2,
                                      dta$Z1*dta$Z2,
                                      dta$Z1^2,dta$Z2^2,
                                      dta$Z1^3,dta$Z2^3,
                                      dta$Z1*dta$Z2^2,dta$Z2*dta$Z1^2))
    names(data_frame2) = c("y", "t1", "Z1", "Z2",
                           "Z1Z2",
                           "Z1_2","Z2_2",
                           "Z1_3","Z2_3",
                           "Z1Z2_2","Z2Z1_2")

    data_frame2 <- data_frame2[order(data_frame2$t1),]

    out1 = try(sbw(data_frame2, "t1", bal_covs, bal_tols, bal_tols_sd, target, l_norm, w_min, normalize, solver, display))
    #out1$data_frame_weights$weights
    print(out1$status)

    #out1$data_frame_weights$weights[which(data_sbw_final$sbw==0)]
    #head(data_sbw_final)



    # data_temp <- as.data.frame(cbind(data_frame2$t1,out1$data_frame_weights$weights))
    # data_temp <- data_temp[order(data_temp$V1,decreasing = TRUE),]
    if (out1$status=="OPTIMAL" ){
      data_sbw_final$sbw[which(data_sbw_final$Tr==1)] <- out1$data_frame_weights$weights[which(out1$data_frame_weights$weights!=0)]
    }

    sbw_counter <- 0
    sbw_counter2 <- 0
    if (out0$status!="OPTIMAL" | out1$status!="OPTIMAL"){ sbw_counter2 <- 1}



  }#end if degree 2



  sbw <- data_sbw_final$sbw

  return(list(sbw=sbw,sbw_counter=sbw_counter,sbw_counter2=sbw_counter2))
}




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

Kpoly <-  function(vect,x){
  xs <- scale(x)
  offset <- vect[2]
  B <- (xs%*%t(xs) + offset)^3
  return(B)
}


#Gaussian kernel for analysis
KGram <- function(vect,X,type_kernel){

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
    K <- Kpoly(vect,X)
  }
  return(K)

}

#minus log likelihood
minus_log_likelihood <- function(vect,X,Y,nte,type_kernel){
  sn2 <- vect[3]^2
  gamma2 <- vect[1]^2
  #scale <- 1
  if(type_kernel==0){ K_plus <- Kmatern(vect,X) + sn2*diag(nte) }
  if(type_kernel==1){ K_plus <- gamma2*Kgauss(vect,X) + sn2*diag(nte) }
  if(type_kernel==2){ K_plus <- gamma2*Klinear(vect,X) + sn2*diag(nte) }
  if(type_kernel==3){ K_plus <- gamma2*Kpoly(vect,X) + sn2*diag(nte) }
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



KOM <- function(dta,Type_kernel,hpara,GPML){


  X <- as.matrix(data.frame(dta$Z1,dta$Z2))

  y <- dta$Y

  TT <- dta$Tr

  t1 <-as.integer(TT)
  t0 <-as.integer((1-TT))

  if(GPML == 1){

    ht <- dta$Tr
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
                                                               type_kernel=Type_kernel)) )

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
                                                                type_kernel=Type_kernel)) )

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
    K1 <- KGram(res.optim2_1$par,X,Type_kernel)
    K0 <- KGram(res.optim2_0$par,X,Type_kernel)

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


    lambda1 <- res.optim2_1$par[3]^2
    lambda0 <- res.optim2_0$par[3]^2

    # lambda1 <- lamda0 <- 0.001

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







#######################################################
# DATA GENERATION
#######################################################

hyp1 <- 1
hyp2 <- 1
coef_kow <- se_kow <- mse_kow <- coef_ipw <- se_ipw <- mse_ipw <- coef_na <- se_na <- mse_na <- NULL
COEF_KOW <- SE_KOW <- MSE_KOW <- COEF_IPW <- SE_IPW <- MSE_IPW <- COEF_NA <- SE_NA <- MSE_NA <- SE_SW_KOW <- SE_SW_IPW <- SE_SW_NA <- NULL
COEF_CBPS <- SE_SW_CBPS <- SE_CBPS <- MSE_CBPS <- coef_cbps <- se_cbps <- coef_cbps <- mse_cbps <- NULL
COEF_SBW <- SE_SW_SBW <- SE_SBW <- MSE_SBW <- coef_sbw <- se_sbw <- coef_sbw <- mse_sbw <- NULL

coef_kow2 <- se_kow2 <- mse_kow2 <- coef_ipw2 <- se_ipw2 <- mse_ipw2 <- coef_na <- se_na <- mse_na <- NULL
COEF_KOW2 <- SE_KOW2 <- MSE_KOW2 <- COEF_IPW2 <- SE_IPW2 <- MSE_IPW2 <- COEF_NA <- SE_NA <- MSE_NA <- SE_SW_KOW2 <- SE_SW_IPW2 <- SE_SW_NA <- NULL
COEF_CBPS2 <- SE_SW_CBPS2 <- SE_CBPS2 <- MSE_CBPS2 <- coef_cbps2 <- se_cbps2 <- coef_cbps2 <- mse_cbps2 <- NULL
COEF_SBW2 <- SE_SW_SBW2 <- SE_SBW2 <- MSE_SBW2 <- coef_sbw2 <- se_sbw2 <- coef_sbw2 <- mse_sbw2 <- NULL

time_GPML0 <- time_GPML02 <- time_GPML1 <- time_GPML12 <- time_matrices <- time_matrices2 <- time_gurobi <- time_gurobi2 <- NULL
T_GPML0 <- T_GPML02 <- T_GPML1 <- T_GPML12 <- T_matrices <- T_matrices2 <- T_gurobi <- T_gurobi2 <- NULL


coef_sipw <- se_sipw <- mse_sipw <- coef_sipw2 <- se_sipw2 <- mse_sipw2 <- COEF_SIPW <- SE_SW_SIPW <- SE_SIPW <- MSE_SIPW <- COEF_SIPW2 <- SE_SW_SIPW2 <- SE_SIPW2 <- MSE_SIPW2 <- NULL

l0 <- l1 <- L0 <- L1 <- counter <- counter2 <- counter_sbw <- counter_sbw2 <- l02 <- l12 <- L02 <- L12 <-  NULL
COUNTER <- COUNTER2 <- COUNTER_SBW <- COUNTER_SBW2 <- time_KOM <- time_KOM2 <- T_KOM <- T_KOM2 <- NULL

#1 correct; 0 no-correct
correct <- 1

seqqn <- seq(200,length.out = 1)
seqqbeta <- seq(0.1,3,length.out = 7)
#seqqbeta <- 1.5
itera <- 500
j <- 0

Type_kernel <- 2

n <- 200

for(beta in seqqbeta){
  j <- j+1
  for(i in 1:itera){

    print(paste("Sample Size ::: ", n, " iteration ::: ", i, " out of ", itera))

    #Data
    X1 <- rnorm(n,0,1)
    X2 <- rnorm(n,0,1)
    X3 <- rnorm(n,0,1)
    X4 <- rnorm(n,0,1)
    B <- matrix(beta,ncol=1)

    prt <- 1/(1+exp(- B[1]*(X1 + X2 ) ) )
    summary(prt)

    Tr <- rbinom(n,1,prt)

    truet <- 1
    #+ 0.1*(X1*X2 + X1*X3 + X1*X4 + X2*X3 + X2*X4 + X3*X4)
    interc <- - mean(prt)
    Y <- interc + truet*Tr + (X1 + X2)  + rnorm(n)

    dta <- data.frame(Y,X1,X2,Tr)
    if(correct==0){
      #(1/exp(dta$X3/2))
      Z <- cbind( (2+dta$X1)/(exp(dta$X1)), ((dta$X1*dta$X2)/25+1)^3)
      #Z <- cbind( (1)/(exp(dta$X1)), ((dta$X1*dta$X2)/2)^3)
    }
    if(correct==1){
      Z <- cbind(dta$X1,dta$X2)
    }
    colnames(Z) <- c("Z1","Z2")

    ##########################################################
    ##########################################################
    ##########################################################
    #IPW Weights
    truet <- 1
    true_ptr1 <- prt
    true_ptr0 <- 1-prt

    ipw1 <- 1/true_ptr1
    ipw0 <- 1/true_ptr0

    ipw_true <- Tr/true_ptr1 + (1-Tr)/(true_ptr0)

    dta <- data.frame(dta,Z,true_ptr1,true_ptr0,ipw0,ipw1,ipw_true)
    dta <- dta[order(dta$Tr,decreasing=TRUE),]

    #####Inverse probability weights
    fitlog <- glm(Tr ~ Z1 + Z2 , data=dta, family="binomial")
    prlog <- predict(fitlog,type="response")
    ipw <- NULL
    ipw[dta$Tr==1] <- 1/prlog[dta$Tr==1]
    ipw[dta$Tr==0] <- 1/(1-prlog[dta$Tr==0])
    summary(ipw)

    fitlog2 <- glm(Tr ~ Z1 + Z2 + I(Z1^2) + I(Z2^2) +  Z1:Z2 + I(Z1^3) + I(Z2^3) + Z1:I(Z2^2) + Z2:I(Z1^2), data=dta, family="binomial")
    prlog2 <- predict(fitlog2,type="response")
    ipw2 <- NULL
    ipw2[dta$Tr==1] <- 1/prlog2[dta$Tr==1]
    ipw2[dta$Tr==0] <- 1/(1-prlog2[dta$Tr==0])
    summary(ipw2)

    #####Stable inverse probability weights
    fitlogs <- glm(Tr ~ 1, data=dta, family="binomial")
    prlogs <- predict(fitlogs,type="response")
    sipw <- NULL
    sipw[dta$Tr==1] <- prlogs[dta$Tr==1]/prlog[dta$Tr==1]
    sipw[dta$Tr==0] <- (1-prlogs[dta$Tr==0])/(1-prlog[dta$Tr==0])
    summary(sipw)

    sipw2 <- NULL
    sipw2[dta$Tr==1] <- prlogs[dta$Tr==1]/prlog2[dta$Tr==1]
    sipw2[dta$Tr==0] <- (1-prlogs[dta$Tr==0])/(1-prlog2[dta$Tr==0])
    summary(sipw2)

    summary(lm(Y ~ Tr + Z1 + Z2,data=dta))
    summary(glm(Tr ~ Z1 + Z2,data=dta,family="binomial"))


    ##########################################################
    ##########################################################
    ##########################################################
    #SBW
    BAL_TOLS <- 1/100
    ressbw <- sbw_result(dta,degree=1,BAL_TOLS)
    sbw <- ressbw$sbw
    if(is.na(sbw)[1]==T){
      ressbw <- sbw_result(dta,degree=1,BAL_TOLS=1/10)
      sbw <- ressbw$sbw}
    #summary(sbw)
    counter_sbw[i] <- ressbw$sbw_counter

    ressbw2 <- sbw_result(dta,degree=2,BAL_TOLS)
    sbw2 <- ressbw2$sbw
    if(is.na(sbw2)[1]==T){
      ressbw2 <- sbw_result(dta,degree=2,BAL_TOLS=1/10)
      sbw2 <- ressbw2$sbw}
    counter_sbw2[i] <- ressbw2$sbw_counter2


    ##########################################################
    ##########################################################
    ##########################################################
    #CBPS
    temp <- CBPS(Tr ~ Z1 + Z2 , data=dta,ATT=0)

    cbps <- temp$weights

    temp <- CBPS(Tr ~ Z1 + Z2 + I(Z1^2) + I(Z2^2) +  Z1:Z2 + I(Z1^3) + I(Z2^3) + Z1:I(Z2^2) + Z2:I(Z1^2), data=dta,ATT=0)

    cbps2 <- temp$weights

    ##########################################################
    ##########################################################
    ##########################################################
    ###KOW
    #xi <- sum(truncw^2)/n
    # xi <- var(truncw)
    # para <- seqqLa[j]
    hpara <- c(1,1,1)
    GPML <- 1
    system_time_KOM <- system.time(resultGPML  <- KOM(dta,Type_kernel,hpara,GPML))
    #print(summary(resultGPML$kow))
    #resultGPML$kow <- rep(1,n)

    if(resultGPML$res$status=="OPTIMAL"){
      res_lm_GPML <- lm(Y ~ Tr, data = dta, weights=resultGPML$kow)
      coefGPML    <- res_lm_GPML$coefficients[2]
      se_lm_GPML  <- sqrt(diag(sandwich(res_lm_GPML)))[2]
      counter[i] <- 0
    }
    if(resultGPML$res$status!="OPTIMAL"){
      counter[i] <- 1
      coefGPML    <- NA
      se_lm_GPML  <- NA
    }


    system_time_KOM2 <- system.time(resultGPML2  <- KOM(dta,Type_kernel=3,hpara,GPML))
    #print(summary(resultGPML$kow))
    #resultGPML2$kow <- rep(1,n)
    if(resultGPML2$res$status=="OPTIMAL"){
      res_lm_GPML2 <- lm(Y ~ Tr, data = dta, weights=resultGPML2$kow)
      coefGPML2    <- res_lm_GPML2$coefficients[2]
      se_lm_GPML2  <- sqrt(diag(sandwich(res_lm_GPML2)))[2]
      counter2[i] <- 0
    }
    if(resultGPML2$res$status!="OPTIMAL"){
      counter2[i] <- 1
      coefGPML2    <- NA
      se_lm_GPML2  <- NA
    }

    ###IPW
    res_lm_ipw <- lm(Y ~ Tr, data = dta, weights=ipw)
    coefipw    <- res_lm_ipw$coefficients[2]
    se_lm_ipw  <- sqrt(diag(sandwich(res_lm_ipw)))[2]

    res_lm_ipw2 <- lm(Y ~ Tr, data = dta, weights=ipw2)
    coefipw2    <- res_lm_ipw2$coefficients[2]
    se_lm_ipw2  <- sqrt(diag(sandwich(res_lm_ipw2)))[2]

    ###SIPW
    res_lm_sipw <- lm(Y ~ Tr, data = dta, weights=sipw)
    coefsipw    <- res_lm_sipw$coefficients[2]
    se_lm_sipw  <- sqrt(diag(sandwich(res_lm_sipw)))[2]

    res_lm_sipw2 <- lm(Y ~ Tr, data = dta, weights=sipw2)
    coefsipw2    <- res_lm_sipw2$coefficients[2]
    se_lm_sipw2  <- sqrt(diag(sandwich(res_lm_sipw2)))[2]


    ###SBW
    if(is.na(sbw)==FALSE){
      res_lm_sbw <- lm(Y ~ Tr, data = dta, weights=sbw)
      coefsbw    <- res_lm_sbw$coefficients[2]
      se_lm_sbw  <- sqrt(diag(sandwich(res_lm_sbw)))[2]
    }
    if(is.na(sbw)==TRUE){
      coefsbw <- NA
      se_lm_sbw <- NA
    }

    if(is.na(sbw2)==FALSE){
      res_lm_sbw2 <- lm(Y ~ Tr, data = dta, weights=sbw2)
      coefsbw2    <- res_lm_sbw2$coefficients[2]
      se_lm_sbw2  <- sqrt(diag(sandwich(res_lm_sbw2)))[2]
    }
    if(is.na(sbw2)==TRUE){
      coefsbw2 <- NA
      se_lm_sbw2 <- NA
    }


    ###CBPS
    res_lm_cbps <- lm(Y ~ Tr, data = dta, weights=cbps)
    coefcbps    <- res_lm_cbps$coefficients[2]
    se_lm_cbps  <- sqrt(diag(sandwich(res_lm_cbps)))[2]

    res_lm_cbps2 <- lm(Y ~ Tr, data = dta, weights=cbps2)
    coefcbps2    <- res_lm_cbps2$coefficients[2]
    se_lm_cbps2  <- sqrt(diag(sandwich(res_lm_cbps2)))[2]


    ###KOW
    coef_kow[i] <- coefGPML
    se_kow[i] <- se_lm_GPML
    mse_kow[i] <- (coefGPML-truet)^2

    coef_kow2[i] <- coefGPML2
    se_kow2[i] <- se_lm_GPML2
    mse_kow2[i] <- (coefGPML2-truet)^2

    l0[i] <- resultGPML$lambda0
    l1[i] <- resultGPML$lambda1

    l02[i] <- resultGPML2$lambda0
    l12[i] <- resultGPML2$lambda1




    coef_ipw[i] <- coefipw
    se_ipw[i] <- se_lm_ipw
    mse_ipw[i] <- (coefipw-truet)^2

    coef_ipw2[i] <- coefipw2
    se_ipw2[i] <- se_lm_ipw2
    mse_ipw2[i] <- (coefipw2-truet)^2

    coef_sipw[i] <- coefsipw
    se_sipw[i] <- se_lm_sipw
    mse_sipw[i] <- (coefsipw-truet)^2

    coef_sipw2[i] <- coefsipw2
    se_sipw2[i] <- se_lm_sipw2
    mse_sipw2[i] <- (coefsipw2-truet)^2

    coef_sbw[i] <- coefsbw
    se_sbw[i] <- se_lm_sbw
    mse_sbw[i] <- (coefsbw-truet)^2

    coef_sbw2[i] <- coefsbw2
    se_sbw2[i] <- se_lm_sbw2
    mse_sbw2[i] <- (coefsbw2-truet)^2

    coef_cbps[i] <- coefcbps
    se_cbps[i] <- se_lm_cbps
    mse_cbps[i] <- (coefcbps-truet)^2

    coef_cbps2[i] <- coefcbps2
    se_cbps2[i] <- se_lm_cbps2
    mse_cbps2[i] <- (coefcbps2-truet)^2

    res_na <- lm(Y ~ Tr, data = dta)
    coef_na[i] <- res_na$coefficients[2]
    se_na[i] <- sqrt(diag(sandwich(res_na)))[2]
    mse_na[i] <- (coef_na[i]-truet)^2

    time_GPML0[i] <- resultGPML$system_time_GPML0[1]
    time_GPML1[i] <- resultGPML$system_time_GPML1[1]
    time_matrices[i] <- resultGPML$system_time_matrices[1]
    time_gurobi[i] <- resultGPML$system_time_gurobi[1]
    time_KOM[i] <- system_time_KOM[1]

    time_GPML02[i] <- resultGPML2$system_time_GPML0[1]
    time_GPML12[i] <- resultGPML2$system_time_GPML1[1]
    time_matrices2[i] <- resultGPML2$system_time_matrices[1]
    time_gurobi2[i] <- resultGPML2$system_time_gurobi[1]
    time_KOM2[i] <- system_time_KOM2[1]



  }

  COEF_KOW[j] <- mean(coef_kow,na.rm=T)
  SE_SW_KOW[j] <- mean(se_kow,na.rm=T)
  SE_KOW[j] <- sd(coef_kow,na.rm=T)
  MSE_KOW[j] <- mean(mse_kow,na.rm=T)

  COEF_KOW2[j] <- mean(coef_kow2,na.rm=T)
  SE_SW_KOW2[j] <- mean(se_kow2,na.rm=T)
  SE_KOW2[j] <- sd(coef_kow2,na.rm=T)
  MSE_KOW2[j] <- mean(mse_kow2,na.rm=T)

  COEF_IPW[j] <- mean(coef_ipw,na.rm=T)
  SE_SW_IPW[j] <- mean(se_ipw,na.rm=T)
  SE_IPW[j] <- sd(coef_ipw,na.rm=T)
  MSE_IPW[j] <- mean(mse_ipw,na.rm=T)

  COEF_IPW2[j] <- mean(coef_ipw2,na.rm=T)
  SE_SW_IPW2[j] <- mean(se_ipw2,na.rm=T)
  SE_IPW2[j] <- sd(coef_ipw2,na.rm=T)
  MSE_IPW2[j] <- mean(mse_ipw2,na.rm=T)


  COEF_SIPW[j] <- mean(coef_sipw,na.rm=T)
  SE_SW_SIPW[j] <- mean(se_sipw,na.rm=T)
  SE_SIPW[j] <- sd(coef_sipw,na.rm=T)
  MSE_SIPW[j] <- mean(mse_sipw,na.rm=T)

  COEF_SIPW2[j] <- mean(coef_sipw2,na.rm=T)
  SE_SW_SIPW2[j] <- mean(se_sipw2,na.rm=T)
  SE_SIPW2[j] <- sd(coef_sipw2,na.rm=T)
  MSE_SIPW2[j] <- mean(mse_sipw2,na.rm=T)

  COEF_SBW[j] <- mean(coef_sbw,na.rm=T)
  SE_SW_SBW[j] <- mean(se_sbw,na.rm=T)
  SE_SBW[j] <- sd(coef_sbw,na.rm=T)
  MSE_SBW[j] <- mean(mse_sbw,na.rm=T)

  COEF_SBW2[j] <- mean(coef_sbw2,na.rm=T)
  SE_SW_SBW2[j] <- mean(se_sbw2,na.rm=T)
  SE_SBW2[j] <- sd(coef_sbw2,na.rm=T)
  MSE_SBW2[j] <- mean(mse_sbw2,na.rm=T)


  COEF_CBPS[j] <- mean(coef_cbps,na.rm=T)
  SE_SW_CBPS[j] <- mean(se_cbps,na.rm=T)
  SE_CBPS[j] <- sd(coef_cbps,na.rm=T)
  MSE_CBPS[j] <- mean(mse_cbps,na.rm=T)

  COEF_CBPS2[j] <- mean(coef_cbps2,na.rm=T)
  SE_SW_CBPS2[j] <- mean(se_cbps2,na.rm=T)
  SE_CBPS2[j] <- sd(coef_cbps2,na.rm=T)
  MSE_CBPS2[j] <- mean(mse_cbps2,na.rm=T)

  COEF_NA[j] <- mean(coef_na,na.rm=T)
  SE_SW_NA[j] <- mean(se_na,na.rm=T)
  SE_NA[j] <- sd(coef_na,na.rm=T)
  MSE_NA[j] <- mean(mse_na,na.rm=T)

  L0[j] <- mean(l0)
  L1[j] <- mean(l1)

  L02[j] <- mean(l02)
  L12[j] <- mean(l12)

  T_GPML0[j] <- mean(time_GPML0,na.rm=T)
  T_GPML1[j] <- mean(time_GPML1,na.rm=T)
  T_matrices[j] <- mean(time_matrices,na.rm=T)
  T_gurobi[j] <- mean(time_gurobi,na.rm=T)
  T_KOM[j] <- mean(time_KOM,na.rm=T)

  T_GPML02[j] <- mean(time_GPML02,na.rm=T)
  T_GPML12[j] <- mean(time_GPML12,na.rm=T)
  T_matrices2[j] <- mean(time_matrices2,na.rm=T)
  T_gurobi2[j] <- mean(time_gurobi2,na.rm=T)
  T_KOM2[j] <- mean(time_KOM2,na.rm=T)


  COUNTER[j] <- mean(counter,na.rm=T)
  COUNTER2[j] <- mean(counter2,na.rm=T)

  COUNTER_SBW[j] <- mean(counter_sbw,na.rm=T)
  COUNTER_SBW2[j] <- mean(counter_sbw2,na.rm=T)


  save.image("simu_linear_correct_191018_n200.RData")
}


###########################################################
###########################################################
###########################################################
#Bias
COEF_KOW-truet
COEF_KOW2-truet
COEF_IPW-truet
COEF_IPW2-truet
COEF_SIPW-truet
COEF_SIPW2-truet
COEF_SBW-truet
COEF_SBW2-truet
COEF_CBPS-truet
COEF_CBPS2-truet
COEF_NA-truet



###########################################################
###########################################################
###########################################################
#Standard error from simulations
SE_KOW
SE_KOW2
SE_IPW
SE_IPW2
SE_SIPW
SE_SIPW2
SE_SBW
SE_SBW2
SE_CBPS
SE_CBPS2
SE_NA


###########################################################
###########################################################
###########################################################
#Standard error from sandwich estimator
SE_SW_KOW
SE_SW_KOW2
SE_SW_IPW
SE_SW_IPW2
SE_SW_SIPW
SE_SW_SIPW2
SE_SW_SBW
SE_SW_SBW2
SE_SW_CBPS
SE_SW_CBPS2
SE_SW_NA


###########################################################
###########################################################
###########################################################
#MSE from simulations
MSE_KOW
MSE_KOW2
MSE_IPW
MSE_IPW2
MSE_SIPW
MSE_SIPW2
MSE_SBW
MSE_SBW2
MSE_CBPS
MSE_CBPS2
MSE_NA


###########################################################
###########################################################
###########################################################
#MSE from B^2 + Var_simu
(COEF_KOW-truet)^2 + SE_KOW^2
(COEF_KOW2-truet)^2 + SE_KOW2^2
(COEF_IPW-truet)^2 + SE_IPW^2
(COEF_IPW2-truet)^2 + SE_IPW2^2
(COEF_SIPW-truet)^2 + SE_SIPW^2
(COEF_SIPW2-truet)^2 + SE_SIPW2^2
(COEF_SBW-truet)^2 + SE_SBW^2
(COEF_SBW2-truet)^2 + SE_SBW2^2
(COEF_CBPS-truet)^2 + SE_CBPS^2
(COEF_CBPS2-truet)^2 + SE_CBPS2^2
(COEF_NA-truet)^2 + SE_NA^2


###########################################################
###########################################################
###########################################################
#MSE from B^2 + Var_sandwich
(COEF_KOW-truet)^2 + SE_SW_KOW^2
(COEF_KOW2-truet)^2 + SE_SW_KOW2^2
(COEF_IPW-truet)^2 + SE_SW_IPW^2
(COEF_IPW2-truet)^2 + SE_SW_IPW2^2
(COEF_SIPW-truet)^2 + SE_SW_SIPW^2
(COEF_SIPW2-truet)^2 + SE_SW_SIPW2^2
(COEF_SBW-truet)^2 + SE_SW_SBW^2
(COEF_SBW2-truet)^2 + SE_SW_SBW2^2
(COEF_CBPS-truet)^2 + SE_SW_CBPS^2
(COEF_CBPS2-truet)^2 + SE_SW_CBPS2^2
(COEF_NA-truet)^2 + SE_SW_NA^2



L0
L1

L02
L12

T_GPML0
T_GPML1
T_matrices
T_gurobi
T_KOM

T_GPML02
T_GPML12
T_matrices2
T_gurobi2
T_KOM2


COUNTER
COUNTER2

COUNTER_SBW
COUNTER_SBW2


# (COEF_IPW-truet)^2/(COEF-truet)^2
# plot((COEF-truet),type="l",ylim=c(0,0.05))
# lines((COEF_IPW-truet),lty=2)


#
# cc <- c(1.231464, 1.316348, 1.304020, 1.530271, 1.827680, 1.806043, 1.661168 ,1.814411 ,2.550200 ,2.080983)
# plot(seq(100,1000,length.out = 10),cc, type="l",ylim=c(0,max(cc)))
# abline(h=1)
