






rm(list = ls())

set.seed(1)
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
                                     dta$Z1^2,dta$Z2^2)) 
    names(data_frame) = c("y", "t", "Z1", "Z2",  
                          "Z1Z2", 
                          "Z1_2","Z2_2")
    
    
    # Treatment indicator 
    t_ind = "t"
    
    # Moment covariates
    bal_covs =c("Z1", "Z2",  
                "Z1Z2", 
                "Z1_2","Z2_2")
    
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
                                      dta$Z1^2,dta$Z2^2)) 
    names(data_frame2) = c("y", "t1", "Z1", "Z2",  
                           "Z1Z2", 
                           "Z1_2","Z2_2")
    
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

matrix_sbw_balance <- matrix(NA,ncol=length(seqqbeta),nro=itera)
matrix_sbw_balance2 <- matrix(NA,ncol=length(seqqbeta),nro=itera)


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
    
    prt <- 1/(1+exp(- B[1]*(X1 + X2 + X1^2 + X2^2 + X1*X2 ) ) )
    summary(prt)
    
    Tr <- rbinom(n,1,prt) 
    
    truet <- 1
    #+ 0.1*(X1*X2 + X1*X3 + X1*X4 + X2*X3 + X2*X4 + X3*X4)
    interc <- - mean(prt)
    Y <- interc + truet*Tr + X1 + X2 + X1^2 + X2^2 + X1*X2 + rnorm(n)
    
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
    
    balance_sbw2 <- -2
    temp_na2 <- TRUE
    while(temp_na2==T){
      ressbw2 <- sbw_result(dta,degree=2,BAL_TOLS=(10^balance_sbw2))
      sbw2 <- ressbw2$sbw
      matrix_sbw_balance2[i,j] <- balance_sbw2
      temp_na2 <- is.na(sbw2)[1]
      counter_sbw2[i] <- ressbw2$sbw_counter2
      balance_sbw2 <- balance_sbw2 + 1
    }
    
    
    ###SBW
    res_lm_sbw <- lm(Y ~ Tr, data = dta, weights=sbw)
    coefsbw    <- res_lm_sbw$coefficients[2]
    se_lm_sbw  <- sqrt(diag(sandwich(res_lm_sbw)))[2]
    
    res_lm_sbw2 <- lm(Y ~ Tr, data = dta, weights=sbw2)
    coefsbw2    <- res_lm_sbw2$coefficients[2]
    se_lm_sbw2  <- sqrt(diag(sandwich(res_lm_sbw2)))[2]
    
    
    coef_sbw[i] <- coefsbw
    se_sbw[i] <- se_lm_sbw
    mse_sbw[i] <- (coefsbw-truet)^2
    
    coef_sbw2[i] <- coefsbw2
    se_sbw2[i] <- se_lm_sbw2
    mse_sbw2[i] <- (coefsbw2-truet)^2
    
    
  }
  
  
  
  COEF_SBW[j] <- mean(coef_sbw,na.rm=T)
  SE_SW_SBW[j] <- mean(se_sbw,na.rm=T)
  SE_SBW[j] <- sd(coef_sbw,na.rm=T)
  MSE_SBW[j] <- mean(mse_sbw,na.rm=T)
  
  COEF_SBW2[j] <- mean(coef_sbw2,na.rm=T)
  SE_SW_SBW2[j] <- mean(se_sbw2,na.rm=T)
  SE_SBW2[j] <- sd(coef_sbw2,na.rm=T)
  MSE_SBW2[j] <- mean(mse_sbw2,na.rm=T)
  
  
  
  COUNTER_SBW[j] <- mean(counter_sbw,na.rm=T)
  COUNTER_SBW2[j] <- mean(counter_sbw2,na.rm=T)
  
  save.image("simu_nonlinear_correct_191018_n200_sbw.RData")
}


###########################################################
###########################################################
###########################################################
#Bias

COEF_SBW-truet
COEF_SBW2-truet




###########################################################
###########################################################
###########################################################
#Standard error from simulations

SE_SBW
SE_SBW2



###########################################################
###########################################################
###########################################################
#Standard error from sandwich estimator


SE_SW_SBW
SE_SW_SBW2


###########################################################
###########################################################
###########################################################
#MSE from simulations

MSE_SBW
MSE_SBW2


COUNTER_SBW
COUNTER_SBW2 