






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

coef_ra <- mse_ra <- COEF_RA <- MSE_RA <- SE_RA <- SE_RA2 <- coef_ra2 <- mse_ra2 <- COEF_RA2 <- MSE_RA2 <- NULL


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
    
    X61 <- rnorm(n,0,1)
    X62 <- rnorm(n,0,1)
    X63 <- rnorm(n,0,1)
    X64 <- rnorm(n,0,1)
    X65 <- rnorm(n,0,1)
    X66 <- rnorm(n,0,1)
    X67 <- rnorm(n,0,1)
    X68 <- rnorm(n,0,1)
    X69 <- rnorm(n,0,1)
    X70 <- rnorm(n,0,1)
    
    X71 <- rnorm(n,0,1)
    X72 <- rnorm(n,0,1)
    X73 <- rnorm(n,0,1)
    X74 <- rnorm(n,0,1)
    X75 <- rnorm(n,0,1)
    X76 <- rnorm(n,0,1)
    X77 <- rnorm(n,0,1)
    X78 <- rnorm(n,0,1)
    X79 <- rnorm(n,0,1)
    X80 <- rnorm(n,0,1)
    
    X81 <- rnorm(n,0,1)
    X82 <- rnorm(n,0,1)
    X83 <- rnorm(n,0,1)
    X84 <- rnorm(n,0,1)
    X85 <- rnorm(n,0,1)
    X86 <- rnorm(n,0,1)
    X87 <- rnorm(n,0,1)
    X88 <- rnorm(n,0,1)
    X89 <- rnorm(n,0,1)
    X90 <- rnorm(n,0,1)
    
    X91 <- rnorm(n,0,1)
    X92 <- rnorm(n,0,1)
    X93 <- rnorm(n,0,1)
    X94 <- rnorm(n,0,1)
    X95 <- rnorm(n,0,1)
    X96 <- rnorm(n,0,1)
    X97 <- rnorm(n,0,1)
    X98 <- rnorm(n,0,1)
    X99 <- rnorm(n,0,1)
    X100 <- rnorm(n,0,1)
    
    X51 <- rnorm(n,0,1)
    X52 <- rnorm(n,0,1)
    X53 <- rnorm(n,0,1)
    X54 <- rnorm(n,0,1)
    X55 <- rnorm(n,0,1)
    X56 <- rnorm(n,0,1)
    X57 <- rnorm(n,0,1)
    X58 <- rnorm(n,0,1)
    X59 <- rnorm(n,0,1)
    X60 <- rnorm(n,0,1)
    
    B <- matrix(beta,ncol=1)
    
    prt <- 1/(1+exp(- B[1]*(X1 + X2 + X3 + X4 + X5 + X6 + X7 + X8 + X9 + X10 + X11 + 
                              X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 +
                              X21 + X22 + X23 + X24 + X25 + X26 + X27 + X28 + X29 + X30 +
                              X31 + X32 + X33 + X34 + X35 + X36 + X37 + X38 + X39 + X40 + 
                              X41 + X42 + X43 + X44 + X45 + X46 + X47 + X48 + X49 + X50 +
                              X51 + X52 + X53 + X54 + X55 + X56 + X57 + X58 + X59 + X60 +
                              X61 + X62 + X63 + X64 + X65 + X66 + X67 + X68 + X69 + X70  +
                              X71 + X72 + X73 + X74 + X75 + X76 + X77 + X78 + X79 + X80  +
                              X81 + X82 + X83 + X84 + X85 + X86 + X87 + X88 + X89 + X90  +
                              X91 + X92 + X93 + X94 + X95 + X96 + X97 + X98 + X99 + X100  ) ) )
    summary(prt)
    
    Tr <- rbinom(n,1,prt) 
    
    truet <- 1
    #+ 0.1*(X1*X2 + X1*X3 + X1*X4 + X2*X3 + X2*X4 + X3*X4)
    interc <- - mean(prt)
    Y <- interc + truet*Tr + (X1 + X2 + X3 + X4 + X5 + X6 + X7 + X8 + X9 + X10 + X11 + 
                                X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 +
                                X21 + X22 + X23 + X24 + X25 + X26 + X27 + X28 + X29 + X30 +
                                X31 + X32 + X33 + X34 + X35 + X36 + X37 + X38 + X39 + X40 + 
                                X41 + X42 + X43 + X44 + X45 + X46 + X47 + X48 + X49 + X50 +
                                X51 + X52 + X53 + X54 + X55 + X56 + X57 + X58 + X59 + X60 +
                                X61 + X62 + X63 + X64 + X65 + X66 + X67 + X68 + X69 + X70  +
                                X71 + X72 + X73 + X74 + X75 + X76 + X77 + X78 + X79 + X80  +
                                X81 + X82 + X83 + X84 + X85 + X86 + X87 + X88 + X89 + X90  +
                                X91 + X92 + X93 + X94 + X95 + X96 + X97 + X98 + X99 + X100 )  + rnorm(n)
    
    dta <- data.frame(Y,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,
                      X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,
                      X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,
                      X31,X32,X33,X34,X35,X36,X37,X38,X39,X40,
                      X41,X42,X43,X44,X45,X46,X47,X48,X49,X50,
                      X51,X52,X53,X54,X55,X56,X57,X58,X59,X60,
                      X61,X62,X63,X64,X65,X66,X67,X68,X69,X70,
                      X71,X72,X73,X74,X75,X76,X77,X78,X79,X80,
                      X81,X82,X83,X84,X85,X86,X87,X88,X89,X90,
                      X91,X92,X93,X94,X95,X96,X97,X98,X99,X100,
                      Tr)
    if(correct==0){
      #(1/exp(dta$X3/2))
      Z <- cbind( (2+dta$X1)/(exp(dta$X1)), ((dta$X1*dta$X2)/25+1)^3, 
                  (2+dta$X3)/(exp(dta$X3)), ((dta$X3*dta$X4)/25+1)^3, 
                  (2+dta$X5)/(exp(dta$X5)), ((dta$X5*dta$X6)/25+1)^3, 
                  (2+dta$X7)/(exp(dta$X7)), ((dta$X7*dta$X8)/25+1)^3, 
                  (2+dta$X9)/(exp(dta$X9)), ((dta$X9*dta$X10)/25+1)^3, 
                  X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,
                  X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,
                  X31,X32,X33,X34,X35,X36,X37,X38,X39,X40,
                  X41,X42,X43,X44,X45,X46,X47,X48,X49,X50,
                  X51,X52,X53,X54,X55,X56,X57,X58,X59,X60,
                  X61,X62,X63,X64,X65,X66,X67,X68,X69,X70,
                  X71,X72,X73,X74,X75,X76,X77,X78,X79,X80,
                  X81,X82,X83,X84,X85,X86,X87,X88,X89,X90,
                  X91,X92,X93,X94,X95,X96,X97,X98,X99,X100)
      #Z <- cbind( (1)/(exp(dta$X1)), ((dta$X1*dta$X2)/2)^3)
    }
    if(correct==1){
      Z <-   cbind(dta$X1, dta$X2, dta$X3, dta$X4, dta$X5, dta$X6, dta$X7, dta$X8, dta$X9, dta$X10,
                   dta$X11, dta$X12, dta$X13, dta$X14, dta$X15, dta$X16, dta$X17, dta$X18, dta$X19, dta$X20,
                   dta$X21, dta$X22, dta$X23, dta$X24, dta$X25, dta$X26, dta$X27, dta$X28, dta$X29, dta$X30,
                   dta$X31, dta$X32, dta$X33, dta$X34, dta$X35, dta$X36, dta$X37, dta$X38, dta$X39, dta$X40,
                   dta$X41, dta$X42, dta$X43, dta$X44, dta$X45, dta$X46, dta$X47, dta$X48, dta$X49, dta$X50,
                   dta$X51, dta$X52, dta$X53, dta$X54, dta$X55, dta$X56, dta$X57, dta$X58, dta$X59, dta$X60,
                   dta$X61, dta$X62, dta$X63, dta$X64, dta$X65, dta$X66, dta$X67, dta$X68, dta$X69, dta$X70,
                   dta$X71, dta$X72, dta$X73, dta$X74, dta$X75, dta$X76, dta$X77, dta$X78, dta$X79, dta$X80,
                   dta$X81, dta$X82, dta$X83, dta$X84, dta$X85, dta$X86, dta$X87, dta$X88, dta$X89, dta$X90,
                   dta$X91, dta$X92, dta$X93, dta$X94, dta$X95, dta$X96, dta$X97, dta$X98, dta$X99, dta$X100)
    }
    colnames(Z) <- c("Z1","Z2","Z3","Z4","Z5","Z6","Z7","Z8","Z9","Z10",
                     "Z11","Z12","Z13","Z14","Z15","Z16","Z17","Z18","Z19","Z20",
                     "Z21","Z22","Z23","Z24","Z25","Z26","Z27","Z28","Z29","Z30",
                     "Z31","Z32","Z33","Z34","Z35","Z36","Z37","Z38","Z39","Z40",
                     "Z41","Z42","Z43","Z44","Z45","Z46","Z47","Z48","Z49","Z50",
                     "Z51","Z52","Z53","Z54","Z55","Z56","Z57","Z58","Z59","Z60",
                     "Z61","Z62","Z63","Z64","Z65","Z66","Z67","Z68","Z69","Z70",
                     "Z71","Z72","Z73","Z74","Z75","Z76","Z77","Z78","Z79","Z80",
                     "Z81","Z82","Z83","Z84","Z85","Z86","Z87","Z88","Z89","Z90",
                     "Z91","Z92","Z93","Z94","Z95","Z96","Z97","Z98","Z99","Z100")
    
    
    dta <- data.frame(dta,Z)
    dta <- dta[order(dta$Tr,decreasing=TRUE),]
    
    
    
    ##########################################################
    ##########################################################
    ##########################################################
    #Regreassion Adjustment
    if(sum(dta$Tr)<n){
      res_ra_1 <- lm(Y ~ (X1 + X2 + X3 + X4 + X5 + X6 + X7 + X8 + X9 + X10 + X11 + 
                            X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 +
                            X21 + X22 + X23 + X24 + X25 + X26 + X27 + X28 + X29 + X30 +
                            X31 + X32 + X33 + X34 + X35 + X36 + X37 + X38 + X39 + X40 + 
                            X41 + X42 + X43 + X44 + X45 + X46 + X47 + X48 + X49 + X50 +
                            X51 + X52 + X53 + X54 + X55 + X56 + X57 + X58 + X59 + X60 +
                            X61 + X62 + X63 + X64 + X65 + X66 + X67 + X68 + X69 + X70  +
                            X71 + X72 + X73 + X74 + X75 + X76 + X77 + X78 + X79 + X80  +
                            X81 + X82 + X83 + X84 + X85 + X86 + X87 + X88 + X89 + X90  +
                            X91 + X92 + X93 + X94 + X95 + X96 + X97 + X98 + X99 + X100 ), data = dta[dta$Tr==1,])
      res_ra_0 <- lm(Y ~ (X1 + X2 + X3 + X4 + X5 + X6 + X7 + X8 + X9 + X10 + X11 + 
                            X12 + X13 + X14 + X15 + X16 + X17 + X18 + X19 + X20 +
                            X21 + X22 + X23 + X24 + X25 + X26 + X27 + X28 + X29 + X30 +
                            X31 + X32 + X33 + X34 + X35 + X36 + X37 + X38 + X39 + X40 + 
                            X41 + X42 + X43 + X44 + X45 + X46 + X47 + X48 + X49 + X50 +
                            X51 + X52 + X53 + X54 + X55 + X56 + X57 + X58 + X59 + X60 +
                            X61 + X62 + X63 + X64 + X65 + X66 + X67 + X68 + X69 + X70  +
                            X71 + X72 + X73 + X74 + X75 + X76 + X77 + X78 + X79 + X80  +
                            X81 + X82 + X83 + X84 + X85 + X86 + X87 + X88 + X89 + X90  +
                            X91 + X92 + X93 + X94 + X95 + X96 + X97 + X98 + X99 + X100 ), data = dta[dta$Tr==0,])
      pr_ra_1 <- predict(res_ra_1, newdata = dta)
      pr_ra_0 <- predict(res_ra_0, newdata = dta)
    }  
    
    ###RA
    coefra <- mean(pr_ra_1-pr_ra_0)
    
    coef_ra[i] <- coefra
    mse_ra[i] <- (coefra-truet)^2
    
    
    
    
  }
  
  
  COEF_RA[j] <- mean(coef_ra,na.rm=T)
  SE_RA[j] <- sd(coef_ra,na.rm=T)
  MSE_RA[j] <- mean(mse_ra,na.rm=T)
  
  
  
  
  save.image("simu_linear_correct_191018_n200_100X_OLS.RData")
}


###########################################################
###########################################################
###########################################################
#Bias
(COEF_RA-truet)^2




###########################################################
###########################################################
###########################################################
#Standard error from simulations
SE_RA



###########################################################
###########################################################
###########################################################
#MSE from simulations
MSE_RA


