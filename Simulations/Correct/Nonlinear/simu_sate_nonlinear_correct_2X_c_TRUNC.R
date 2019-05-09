



setwd("/Users/micsan/Desktop/data/")


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
    
    fitlog2 <- glm(Tr ~ Z1 + Z2 + I(Z1^2) + I(Z2^2) +  Z1:Z2, data=dta, family="binomial")
    prlog2 <- predict(fitlog2,type="response")
    ipw2 <- NULL
    ipw2[dta$Tr==1] <- 1/prlog2[dta$Tr==1]
    ipw2[dta$Tr==0] <- 1/(1-prlog2[dta$Tr==0])
    summary(ipw2)
    
    #####Truncated inverse probability weights
    fitlogs <- glm(Tr ~ 1, data=dta, family="binomial")
    prlogs <- predict(fitlogs,type="response")
    sipw <- ipw/mean(ipw)
    sipw[which(sipw>=quantile(ipw,0.99))] <- quantile(ipw,0.99)
    sipw[which(sipw<=quantile(ipw,0.01))] <- quantile(ipw,0.01)
    summary(sipw)
    
    sipw2 <- ipw2/mean(ipw2)
    sipw2[which(sipw2>=quantile(ipw2,0.99))] <- quantile(ipw2,0.99)
    sipw2[which(sipw2<=quantile(ipw,0.01))] <- quantile(ipw2,0.01)
    summary(sipw2)
    
    summary(lm(Y ~ Tr + Z1 + Z2,data=dta))
    summary(glm(Tr ~ Z1 + Z2,data=dta,family="binomial"))
    
    
    
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
    

    
    
    
  }
  
  
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
  
 
  
  
  
  save.image("simu_nonlinear_correct_191018_n200_TRUNC.RData")
}


###########################################################
###########################################################
###########################################################
#Bias

COEF_IPW-truet
COEF_IPW2-truet
COEF_SIPW-truet
COEF_SIPW2-truet




###########################################################
###########################################################
###########################################################
#Standard error from simulations

SE_IPW
SE_IPW2
SE_SIPW
SE_SIPW2



###########################################################
###########################################################
###########################################################
#Standard error from sandwich estimator

SE_SW_IPW
SE_SW_IPW2
SE_SW_SIPW
SE_SW_SIPW2



###########################################################
###########################################################
###########################################################
#MSE from simulations

MSE_IPW
MSE_IPW2
MSE_SIPW
MSE_SIPW2



###########################################################
###########################################################
###########################################################
#MSE from B^2 + Var_simu

(COEF_IPW-truet)^2 + SE_IPW^2
(COEF_IPW2-truet)^2 + SE_IPW2^2
(COEF_SIPW-truet)^2 + SE_SIPW^2
(COEF_SIPW2-truet)^2 + SE_SIPW2^2



###########################################################
###########################################################
###########################################################
#MSE from B^2 + Var_sandwich

(COEF_IPW-truet)^2 + SE_SW_IPW^2
(COEF_IPW2-truet)^2 + SE_SW_IPW2^2
(COEF_SIPW-truet)^2 + SE_SW_SIPW^2
(COEF_SIPW2-truet)^2 + SE_SW_SIPW2^2


