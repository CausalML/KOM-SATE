






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
    data_frame = as.data.frame(cbind(dta$Y, dta$Tr, dta$Z1, dta$Z2, dta$Z3, dta$Z4, dta$Z5, dta$Z6, dta$Z7, dta$Z8, dta$Z9, dta$Z10,
                                     dta$Z11, dta$Z12, dta$Z13, dta$Z14, dta$Z15, dta$Z16, dta$Z17, dta$Z18, dta$Z19, dta$Z20,
                                     dta$Z21, dta$Z22, dta$Z23, dta$Z24, dta$Z25, dta$Z26, dta$Z27, dta$Z28, dta$Z29, dta$Z30,
                                     dta$Z31, dta$Z32, dta$Z33, dta$Z34, dta$Z35, dta$Z36, dta$Z37, dta$Z38, dta$Z39, dta$Z40,
                                     dta$Z41, dta$Z42, dta$Z43, dta$Z44, dta$Z45, dta$Z46, dta$Z47, dta$Z48, dta$Z49, dta$Z50))
    names(data_frame) = c("y", "t", "Z1","Z2","Z3","Z4","Z5","Z6","Z7","Z8","Z9","Z10",
                          "Z11","Z12","Z13","Z14","Z15","Z16","Z17","Z18","Z19","Z20",
                          "Z21","Z22","Z23","Z24","Z25","Z26","Z27","Z28","Z29","Z30",
                          "Z31","Z32","Z33","Z34","Z35","Z36","Z37","Z38","Z39","Z40",
                          "Z41","Z42","Z43","Z44","Z45","Z46","Z47","Z48","Z49","Z50")
    
    # Treatment indicator 
    t_ind = "t"
    
    # Moment covariates
    bal_covs =c( "Z1","Z2","Z3","Z4","Z5","Z6","Z7","Z8","Z9","Z10",
                 "Z11","Z12","Z13","Z14","Z15","Z16","Z17","Z18","Z19","Z20",
                 "Z21","Z22","Z23","Z24","Z25","Z26","Z27","Z28","Z29","Z30",
                 "Z31","Z32","Z33","Z34","Z35","Z36","Z37","Z38","Z39","Z40",
                 "Z41","Z42","Z43","Z44","Z45","Z46","Z47","Z48","Z49","Z50")
    
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
    
    data_frame2 = as.data.frame(cbind(dta$Y, t1, dta$Z1, dta$Z2, dta$Z3, dta$Z4, dta$Z5, dta$Z6, dta$Z7, dta$Z8, dta$Z9, dta$Z10,
                                      dta$Z11, dta$Z12, dta$Z13, dta$Z14, dta$Z15, dta$Z16, dta$Z17, dta$Z18, dta$Z19, dta$Z20,
                                      dta$Z21, dta$Z22, dta$Z23, dta$Z24, dta$Z25, dta$Z26, dta$Z27, dta$Z28, dta$Z29, dta$Z30,
                                      dta$Z31, dta$Z32, dta$Z33, dta$Z34, dta$Z35, dta$Z36, dta$Z37, dta$Z38, dta$Z39, dta$Z40,
                                      dta$Z41, dta$Z42, dta$Z43, dta$Z44, dta$Z45, dta$Z46, dta$Z47, dta$Z48, dta$Z49, dta$Z50))
    names(data_frame2) = c("y", "t1",  "Z1","Z2","Z3","Z4","Z5","Z6","Z7","Z8","Z9","Z10",
                           "Z11","Z12","Z13","Z14","Z15","Z16","Z17","Z18","Z19","Z20",
                           "Z21","Z22","Z23","Z24","Z25","Z26","Z27","Z28","Z29","Z30",
                           "Z31","Z32","Z33","Z34","Z35","Z36","Z37","Z38","Z39","Z40",
                           "Z41","Z42","Z43","Z44","Z45","Z46","Z47","Z48","Z49","Z50")
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
  
  
  X <- as.matrix(data.frame(dta$Z1, dta$Z2, dta$Z3, dta$Z4, dta$Z5, dta$Z6, dta$Z7, dta$Z8, dta$Z9, dta$Z10,
                            dta$Z11, dta$Z12, dta$Z13, dta$Z14, dta$Z15, dta$Z16, dta$Z17, dta$Z18, dta$Z19, dta$Z20,
                            dta$Z21, dta$Z22, dta$Z23, dta$Z24, dta$Z25, dta$Z26, dta$Z27, dta$Z28, dta$Z29, dta$Z30,
                            dta$Z31, dta$Z32, dta$Z33, dta$Z34, dta$Z35, dta$Z36, dta$Z37, dta$Z38, dta$Z39, dta$Z40,
                            dta$Z41, dta$Z42, dta$Z43, dta$Z44, dta$Z45, dta$Z46, dta$Z47, dta$Z48, dta$Z49, dta$Z50))
  
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
    # K1 <- res.optim2_1$par[1]^2*KGram(res.optim2_1$par,X,Type_kernel)
    # K0 <- res.optim2_0$par[1]^2*KGram(res.optim2_0$par,X,Type_kernel)
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
#seqqbeta <- seq(0.1,3,length.out = 7)
seqqbeta <- 2
itera <- 100
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
    X5 <- rnorm(n,0,1)
    X6 <- rnorm(n,0,1)
    X7 <- rnorm(n,0,1)
    X8 <- rnorm(n,0,1)
    X9 <- rnorm(n,0,1)
    X10 <- rnorm(n,0,1)
    X11 <- rnorm(n,0,1)
    X12 <- rnorm(n,0,1)
    X13 <- rnorm(n,0,1)
    X14 <- rnorm(n,0,1)
    X15 <- rnorm(n,0,1)
    X16 <- rnorm(n,0,1)
    X17 <- rnorm(n,0,1)
    X18 <- rnorm(n,0,1)
    X19 <- rnorm(n,0,1)
    X20 <- rnorm(n,0,1)
    
    X21 <- rnorm(n,0,1)
    X22 <- rnorm(n,0,1)
    X23 <- rnorm(n,0,1)
    X24 <- rnorm(n,0,1)
    X25 <- rnorm(n,0,1)
    X26 <- rnorm(n,0,1)
    X27 <- rnorm(n,0,1)
    X28 <- rnorm(n,0,1)
    X29 <- rnorm(n,0,1)
    X30 <- rnorm(n,0,1)
    
    X31 <- rnorm(n,0,1)
    X32 <- rnorm(n,0,1)
    X33 <- rnorm(n,0,1)
    X34 <- rnorm(n,0,1)
    X35 <- rnorm(n,0,1)
    X36 <- rnorm(n,0,1)
    X37 <- rnorm(n,0,1)
    X38 <- rnorm(n,0,1)
    X39 <- rnorm(n,0,1)
    X40 <- rnorm(n,0,1)
    
    X41 <- rnorm(n,0,1)
    X42 <- rnorm(n,0,1)
    X43 <- rnorm(n,0,1)
    X44 <- rnorm(n,0,1)
    X45 <- rnorm(n,0,1)
    X46 <- rnorm(n,0,1)
    X47 <- rnorm(n,0,1)
    X48 <- rnorm(n,0,1)
    X49 <- rnorm(n,0,1)
    X50 <- rnorm(n,0,1)
    B <- matrix(beta,ncol=1)
    
    prt <- 1/(1+exp(- B[1]*(X1 + X2 + X3 + X4 + X5 + X6 + X7 + X8 + X9 + X10 + X11 + 
                              X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 +
                              X21 + X22 + X23 + X24 + X25 + X26 + X27 + X28 + X29 + X30 +
                              X31 + X32 + X33 + X34 + X35 + X36 + X37 + X38 + X39 + X40 + 
                              X41 + X42 + X43 + X44 + X45 + X46 + X47 + X48 + X49 + X50 ) ) )
    summary(prt)
    
    Tr <- rbinom(n,1,prt) 
    
    truet <- 1
    #+ 0.1*(X1*X2 + X1*X3 + X1*X4 + X2*X3 + X2*X4 + X3*X4)
    interc <- - mean(prt)
    Y <- interc + truet*Tr + (X1 + X2 + X3 + X4 + X5 + X6 + X7 + X8 + X9 + X10 + X11 + 
                                X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 +
                                X21 + X22 + X23 + X24 + X25 + X26 + X27 + X28 + X29 + X30 +
                                X31 + X32 + X33 + X34 + X35 + X36 + X37 + X38 + X39 + X40 + 
                                X41 + X42 + X43 + X44 + X45 + X46 + X47 + X48 + X49 + X50 )  + rnorm(n)
    
    dta <- data.frame(Y,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,
                      X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,
                      X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,
                      X31,X32,X33,X34,X35,X36,X37,X38,X39,X40,
                      X41,X42,X43,X44,X45,X46,X47,X48,X49,X50,
                      Tr)
    if(correct==0){
      #(1/exp(dta$X3/2))
      Z <- cbind( (2+dta$X1)/(exp(dta$X1)), ((dta$X1*dta$X2)/25+1)^3,
                  (2+dta$X3)/(exp(dta$X3)), ((dta$X3*dta$X3)/25+1)^3,
                  (2+dta$X5)/(exp(dta$X5)), X6,X7,X8,X9,X10,
                  X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,
                  X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,
                  X31,X32,X33,X34,X35,X36,X37,X38,X39,X40,
                  X41,X42,X43,X44,X45,X46,X47,X48,X49,X50)
      #Z <- cbind( (1)/(exp(dta$X1)), ((dta$X1*dta$X2)/2)^3)
    }
    if(correct==1){
      Z <-   cbind(dta$X1, dta$X2, dta$X3, dta$X4, dta$X5, dta$X6, dta$X7, dta$X8, dta$X9, dta$X10,
                   dta$X11, dta$X12, dta$X13, dta$X14, dta$X15, dta$X16, dta$X17, dta$X18, dta$X19, dta$X20,
                   dta$X21, dta$X22, dta$X23, dta$X24, dta$X25, dta$X26, dta$X27, dta$X28, dta$X29, dta$X30,
                   dta$X31, dta$X32, dta$X33, dta$X34, dta$X35, dta$X36, dta$X37, dta$X38, dta$X39, dta$X40,
                   dta$X41, dta$X42, dta$X43, dta$X44, dta$X45, dta$X46, dta$X47, dta$X48, dta$X49, dta$X50)
    }
    colnames(Z) <- c("Z1","Z2","Z3","Z4","Z5","Z6","Z7","Z8","Z9","Z10",
                     "Z11","Z12","Z13","Z14","Z15","Z16","Z17","Z18","Z19","Z20",
                     "Z21","Z22","Z23","Z24","Z25","Z26","Z27","Z28","Z29","Z30",
                     "Z31","Z32","Z33","Z34","Z35","Z36","Z37","Z38","Z39","Z40",
                     "Z41","Z42","Z43","Z44","Z45","Z46","Z47","Z48","Z49","Z50")
    
    
    dta <- data.frame(dta,Z)
    dta <- dta[order(dta$Tr,decreasing=TRUE),]
    
    
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
    
    
    
    
    ###KOW
    coef_kow[i] <- coefGPML 
    se_kow[i] <- se_lm_GPML
    mse_kow[i] <- (coefGPML-truet)^2
    
    
    
    coef_sbw[i] <- coefsbw
    se_sbw[i] <- se_lm_sbw
    mse_sbw[i] <- (coefsbw-truet)^2
    
    
    res_na <- lm(Y ~ Tr, data = dta)
    coef_na[i] <- res_na$coefficients[2]
    se_na[i] <- sqrt(diag(sandwich(res_na)))[2]
    mse_na[i] <- (coef_na[i]-truet)^2
    
    
  }
  
  COEF_KOW[j] <- mean(coef_kow,na.rm=T)
  SE_SW_KOW[j] <- mean(se_kow,na.rm=T)
  SE_KOW[j] <- sd(coef_kow,na.rm=T)
  MSE_KOW[j] <- mean(mse_kow,na.rm=T)
  
  
  
  COEF_SBW[j] <- mean(coef_sbw,na.rm=T)
  SE_SW_SBW[j] <- mean(se_sbw,na.rm=T)
  SE_SBW[j] <- sd(coef_sbw,na.rm=T)
  MSE_SBW[j] <- mean(mse_sbw,na.rm=T)
  
  
  
  COEF_NA[j] <- mean(coef_na,na.rm=T)
  SE_SW_NA[j] <- mean(se_na,na.rm=T)
  SE_NA[j] <- sd(coef_na,na.rm=T)
  MSE_NA[j] <- mean(mse_na,na.rm=T)
  
  
 save.image("simu_linear_correct_191018_n200_50X_b.RData")
}


###########################################################
###########################################################
###########################################################
#Bias
COEF_KOW-truet

COEF_SBW-truet




###########################################################
###########################################################
###########################################################
#Standard error from simulations
SE_KOW

SE_SBW



###########################################################
###########################################################
###########################################################
#Standard error from sandwich estimator
SE_SW_KOW

SE_SW_SBW



###########################################################
###########################################################
###########################################################
#MSE from simulations
MSE_KOW

MSE_SBW



###########################################################
###########################################################
###########################################################
#MSE from B^2 + Var_simu
(COEF_KOW-truet)^2 + SE_KOW^2

(COEF_SBW-truet)^2 + SE_SBW^2



###########################################################
###########################################################
###########################################################
#MSE from B^2 + Var_sandwich
(COEF_KOW-truet)^2 + SE_SW_KOW^2

(COEF_SBW-truet)^2 + SE_SW_SBW^2

