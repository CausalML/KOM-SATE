






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

coef_ra <- mse_ra <- COEF_RA <- MSE_RA <- SE_RA <- SE_RA2 <- coef_ra2 <- mse_ra2 <- COEF_RA2 <- MSE_RA2 <- NULL


#1 correct; 0 no-correct
correct <- 0

seqqn <- seq(200,length.out = 1)
seqqbeta <- seq(0.1,3,length.out = 7)
#seqqbeta <- 1.5
itera <- 2000
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
    
    prt <- 1/(1+exp(- B[1]*(X1 + X2 + I(X1^2) + I(X2^2) +  X1:X2 ) ) )
    summary(prt)
    
    Tr <- rbinom(n,1,prt) 
    
    truet <- 1
    #+ 0.1*(X1*X2 + X1*X3 + X1*X4 + X2*X3 + X2*X4 + X3*X4)
    interc <- - mean(prt)
    Y <- interc + truet*Tr + X1 + X2 + I(X1^2) + I(X2^2) +  X1:X2  + rnorm(n)
    
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
    #Regreassion Adjustment
    if(sum(dta$Tr)<n){
      res_ra_1 <- lm(Y ~ Z1 + Z2, data = dta[dta$Tr==1,])
      res_ra_0 <- lm(Y ~ Z1 + Z2, data = dta[dta$Tr==0,])
      pr_ra_1 <- predict(res_ra_1, newdata = dta)
      pr_ra_0 <- predict(res_ra_0, newdata = dta)
    
    
      try(res_ra_1_2 <- lm(Y ~ Z1 + Z2 + I(Z1^2) + I(Z2^2) +  Z1:Z2 , data = dta[dta$Tr==1,]))
      try(res_ra_0_2 <- lm(Y ~ Z1 + Z2 + I(Z1^2) + I(Z2^2) +  Z1:Z2 , data = dta[dta$Tr==0,]))
      try(pr_ra_1_2 <- predict(res_ra_1_2, newdata = dta))
      try(pr_ra_0_2 <- predict(res_ra_0_2, newdata = dta))
    }
  
    ###RA
    coefra <- mean(pr_ra_1-pr_ra_0)
    coefra2 <- mean(pr_ra_1_2-pr_ra_0_2)
   
    coef_ra[i] <- coefra
    mse_ra[i] <- (coefra-truet)^2
    
    coef_ra2[i] <- coefra2
    mse_ra2[i] <- (coefra2-truet)^2
    
  }
  
  
  COEF_RA[j] <- mean(coef_ra,na.rm=T)
  SE_RA[j] <- sd(coef_ra,na.rm=T)
  MSE_RA[j] <- mean(mse_ra,na.rm=T)
  
  COEF_RA2[j] <- mean(coef_ra2,na.rm=T)
  SE_RA2[j] <- sd(coef_ra2,na.rm=T)
  MSE_RA2[j] <- mean(mse_ra2,na.rm=T)
  

  
  save.image("simu_nonlinear_miss_191018_n200_OLS.RData")
}


###########################################################
###########################################################
###########################################################
#Bias

COEF_RA-truet
COEF_RA2-truet




###########################################################
###########################################################
###########################################################
#Standard error from simulations

SE_RA
SE_RA2




###########################################################
###########################################################
###########################################################
#MSE from simulations

MSE_RA
MSE_RA2

