






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
                                     dta$Z11, dta$Z12, dta$Z13, dta$Z14, dta$Z15, dta$Z16, dta$Z17, dta$Z18, dta$Z19, dta$Z20))
    names(data_frame) = c("y", "t", "Z1","Z2","Z3","Z4","Z5","Z6","Z7","Z8","Z9","Z10",
                          "Z11","Z12","Z13","Z14","Z15","Z16","Z17","Z18","Z19","Z20")
    
    # Treatment indicator 
    t_ind = "t"
    
    # Moment covariates
    bal_covs =c("Z1","Z2","Z3","Z4","Z5","Z6","Z7","Z8","Z9","Z10",
                "Z11","Z12","Z13","Z14","Z15","Z16","Z17","Z18","Z19","Z20")
    
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
                                      dta$Z11, dta$Z12, dta$Z13, dta$Z14, dta$Z15, dta$Z16, dta$Z17, dta$Z18, dta$Z19, dta$Z20))
    names(data_frame2) = c("y", "t1", "Z1","Z2","Z3","Z4","Z5","Z6","Z7","Z8","Z9","Z10",
                           "Z11","Z12","Z13","Z14","Z15","Z16","Z17","Z18","Z19","Z20")
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
itera <- 500
j <- 0

Type_kernel <- 2

n <- 200

matrix_sbw_balance <- matrix(NA,ncol=length(seqqbeta),nro=itera)
matrix_sbw_balance2 <- matrix(NA,ncol=length(seqqbeta),nro=itera)


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
    B <- matrix(beta,ncol=1)
    
    prt <- 1/(1+exp(- B[1]*(X1 + X2 + X3 + X4 + X5 + X6 + X7 + X8 + X9 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 ) ) )
    summary(prt)
    
    Tr <- rbinom(n,1,prt) 
    
    truet <- 1
    #+ 0.1*(X1*X2 + X1*X3 + X1*X4 + X2*X3 + X2*X4 + X3*X4)
    interc <- - mean(prt)
    Y <- interc + truet*Tr + (X1 + X2 + X3 + X4 + X5 + X6 + X7 + X8 + X9 + X10 + X11 + X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 )  + rnorm(n)
    
    dta <- data.frame(Y,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,Tr)
    if(correct==0){
      #(1/exp(dta$X3/2))
      Z <- cbind(  (2+dta$X1)/(exp(dta$X1)), ((dta$X1*dta$X2)/25+1)^3,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20)
                  
      #Z <- cbind( (1)/(exp(dta$X1)), ((dta$X1*dta$X2)/2)^3)
    }
    if(correct==1){
      Z <-   cbind(dta$X1, dta$X2, dta$X3, dta$X4, dta$X5, dta$X6, dta$X7, dta$X8, dta$X9, dta$X10,
                   dta$X11, dta$X12, dta$X13, dta$X14, dta$X15, dta$X16, dta$X17, dta$X18, dta$X19, dta$X20)
    }
    colnames(Z) <- c("Z1","Z2","Z3","Z4","Z5","Z6","Z7","Z8","Z9","Z10","Z11","Z12","Z13","Z14","Z15","Z16","Z17","Z18","Z19","Z20")
    
    
    dta <- data.frame(dta,Z)
    dta <- dta[order(dta$Tr,decreasing=TRUE),]
    
  
    
    ##########################################################
    ##########################################################
    ##########################################################
    #SBW
    balance_sbw <- -2
    temp_na <- TRUE
    while(temp_na==T){
      ressbw <- sbw_result(dta,degree=1,BAL_TOLS=(10^balance_sbw))
      sbw <- ressbw$sbw
      matrix_sbw_balance[i,j] <- balance_sbw
      temp_na <- is.na(sbw)[1]
      counter_sbw[i] <- ressbw$sbw_counter
      balance_sbw <- balance_sbw + 1
    }
    
    # balance_sbw2 <- -2
    # temp_na2 <- TRUE
    # while(temp_na2==T){
    #   ressbw2 <- sbw_result(dta,degree=2,BAL_TOLS=(10^balance_sbw2))
    #   sbw2 <- ressbw2$sbw
    #   matrix_sbw_balance2[i,j] <- balance_sbw2
    #   temp_na2 <- is.na(sbw2)[1]
    #   counter_sbw2[i] <- ressbw2$sbw_counter2
    #   balance_sbw2 <- balance_sbw2 + 1
    # }
    
    
    ###SBW
    res_lm_sbw <- lm(Y ~ Tr, data = dta, weights=sbw)
    coefsbw    <- res_lm_sbw$coefficients[2]
    se_lm_sbw  <- sqrt(diag(sandwich(res_lm_sbw)))[2]
    
    # res_lm_sbw2 <- lm(Y ~ Tr, data = dta, weights=sbw2)
    # coefsbw2    <- res_lm_sbw2$coefficients[2]
    # se_lm_sbw2  <- sqrt(diag(sandwich(res_lm_sbw2)))[2]
    
    
    coef_sbw[i] <- coefsbw
    se_sbw[i] <- se_lm_sbw
    mse_sbw[i] <- (coefsbw-truet)^2
    
    # coef_sbw2[i] <- coefsbw2
    # se_sbw2[i] <- se_lm_sbw2
    # mse_sbw2[i] <- (coefsbw2-truet)^2
    # 
    
    

    
  }
  
  
  COEF_SBW[j] <- mean(coef_sbw,na.rm=T)
  SE_SBW[j] <- sd(coef_sbw,na.rm=T)
  MSE_SBW[j] <- mean(mse_sbw,na.rm=T)

  
  
  save.image("simu_linear_correct_191018_n200_20X_sbw.RData")
}


###########################################################
###########################################################
###########################################################
#Bias
(COEF_SBW-truet)^2




###########################################################
###########################################################
###########################################################
#Standard error from simulations
SE_SBW



###########################################################
###########################################################
###########################################################
#MSE from simulations
MSE_SBW


