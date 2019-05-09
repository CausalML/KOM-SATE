



rm(list = ls())

set.seed(17)
# install.packages("quadprog")
# install.packages("ipw")
# install.packages("sandwich")
library(Matching)





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


coef_ma <- mse_ma <- coef_ma2 <- mse_ma2 <- COEF_MA <- SE_MA <- COEF_MA2 <- SE_MA2 <- MSE_MA <- MSE_MA2 <- NULL
se_ma <- se_ma2 <- NULL
#1 correct; 0 no-correct
correct <- 0

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
    
    prt <- 1/(1+exp(- B[1]*(X1 + X2 + I(X1^2) + I(X2^2) +  X1:X2 ) ) )
    summary(prt)
    
    Tr <- rbinom(n,1,prt) 
    
    truet <- 1
    #+ 0.1*(X1*X2 + X1*X3 + X1*X4 + X2*X3 + X2*X4 + X3*X4)
    interc <- - mean(prt)
    Y <- interc + truet*Tr + (X1 + X2) + I(X1^2) + I(X2^2) +  X1:X2  + rnorm(n)
    
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
    fitlog2 <- glm(Tr ~ Z1 + Z2 + I(Z1^2) + I(Z2^2) +  Z1:Z2 + I(Z1^3) + I(Z2^3) + Z1:I(Z2^2) + Z2:I(Z1^2), data=dta, family="binomial")
    
    
    
    ##########################################################
    ##########################################################
    ##########################################################
    #Propensity score Matching
    try(m1 <- Match(Y = dta$Y, Tr = dta$Tr, X = fitlog$fitted, estimand = "ATE"))
    try(m2 <- Match(Y = dta$Y, Tr = dta$Tr, X = fitlog2$fitted, estimand = "ATE"))
    
    
    coef_ma[i] <- m1$est
    se_ma[i] <- m1$se
    mse_ma[i] <- (m1$est-truet)^2
    coef_ma2[i] <- m2$est
    se_ma2[i] <- m2$se
    mse_ma2[i] <- (m2$est-truet)^2
    
    
    
  }
  
  COEF_MA[j] <- mean(coef_ma,na.rm=T)
  SE_MA[j] <- sd(coef_ma,na.rm=T)
  COEF_MA2[j] <- mean(coef_ma2,na.rm=T)
  SE_MA2[j] <- sd(coef_ma2,na.rm=T)
  MSE_MA[j] <- mean(mse_ma,na.rm=T)
  MSE_MA2[j] <- mean(mse_ma2,na.rm=T)
  
  
  
  save.image("simu_nonlinear_misspecified_191018_n200_matching.RData")
}


###########################################################
###########################################################
###########################################################
#Bias
COEF_MA-truet
COEF_MA2-truet



###########################################################
###########################################################
###########################################################
#Standard error from simulations
SE_MA
SE_MA2




###########################################################
###########################################################
###########################################################
#MSE from simulations
MSE_MA
MSE_MA2


