
library(splines)


setwd("/Users/micsan/Google Drive/Cornell/data/")
setwd("/Users/micsan/Google Drive/Cornell/Github/KOM-SATE/RCode/Simulations/data/")
#setwd("/home/micsan/research/Research/projects/Cornell/Longitudinal/data/")


DF <- 3
LWD <- 3
CEX <- 1.5


#########################################################################################################
#########################################################################################################
#
# CORRECT
#
#########################################################################################################
#########################################################################################################


#########################################################################################################
# Linear
#########################################################################################################
load("simu_linear_correct_191018_n200.RData")

CI_KOW_L <- coef_kow - qnorm(0.975)*se_kow
CI_KOW_B <- coef_kow + qnorm(0.975)*se_kow
COVE_KOW <- (CI_KOW_L<=truet)*(CI_KOW_B>=truet)
mean(COVE_KOW)

CI_SBW_L <- coef_sbw - qnorm(0.975)*se_sbw
CI_SBW_B <- coef_sbw + qnorm(0.975)*se_sbw
COVE_SBW <- (CI_SBW_L<=truet)*(CI_SBW_B>=truet)
sum(COVE_SBW,na.rm=T)/500


CI_ipw_L <- coef_ipw - qnorm(0.975)*se_ipw
CI_ipw_B <- coef_ipw + qnorm(0.975)*se_ipw
COVE_ipw <- (CI_ipw_L<=truet)*(CI_ipw_B>=truet)
mean(COVE_ipw)


CI_cbps_L <- coef_cbps - qnorm(0.975)*se_cbps
CI_cbps_B <- coef_cbps + qnorm(0.975)*se_cbps
COVE_cbps <- (CI_cbps_L<=truet)*(CI_cbps_B>=truet)
mean(COVE_cbps)

load("simu_linear_correct_191018_n200_TRUNC.RData")
CI_sipw_L <- coef_sipw - qnorm(0.975)*se_sipw
CI_sipw_B <- coef_sipw + qnorm(0.975)*se_sipw
COVE_sipw <- (CI_sipw_L<=truet)*(CI_sipw_B>=truet)
mean(COVE_sipw)


load("simu_linear_correct_191018_n200_matching.RData")
CI_ma_L <- coef_ma - qnorm(0.975)*se_ma
CI_ma_B <- coef_ma + qnorm(0.975)*se_ma
COVE_ma <- (CI_ma_L<=truet)*(CI_ma_B>=truet)
mean(COVE_ma)


load("simu_linear_correct_191018_n200_OLS.RData")
CI_ma_L <- coef_ma - qnorm(0.975)*se_ra
CI_ma_B <- coef_ma + qnorm(0.975)*se_ra
COVE_ma <- (CI_ma_L<=truet)*(CI_ma_B>=truet)
mean(COVE_ma)

#########################################################################################################
# Nonlinear
#########################################################################################################
load("simu_nonlinear_correct_191018_n200.RData")

CI_KOW_L <- coef_kow2 - qnorm(0.975)*se_kow2
CI_KOW_B <- coef_kow2 + qnorm(0.975)*se_kow2
COVE_KOW <- (CI_KOW_L<=truet)*(CI_KOW_B>=truet)
mean(COVE_KOW)

CI_SBW_L <- coef_sbw2 - qnorm(0.975)*se_sbw2
CI_SBW_B <- coef_sbw2 + qnorm(0.975)*se_sbw2
COVE_SBW <- (CI_SBW_L<=truet)*(CI_SBW_B>=truet)
sum(COVE_SBW,na.rm=T)/500


CI_ipw_L <- coef_ipw2 - qnorm(0.975)*se_ipw2
CI_ipw_B <- coef_ipw2 + qnorm(0.975)*se_ipw2
COVE_ipw <- (CI_ipw_L<=truet)*(CI_ipw_B>=truet)
mean(COVE_ipw)


CI_cbps_L <- coef_cbps2 - qnorm(0.975)*se_cbps2
CI_cbps_B <- coef_cbps2 + qnorm(0.975)*se_cbps2
COVE_cbps <- (CI_cbps_L<=truet)*(CI_cbps_B>=truet)
mean(COVE_cbps)


load("simu_nonlinear_correct_191018_n200_TRUNC.RData")
CI_sipw_L <- coef_sipw2 - qnorm(0.975)*se_sipw2
CI_sipw_B <- coef_sipw2 + qnorm(0.975)*se_sipw2
COVE_sipw <- (CI_sipw_L<=truet)*(CI_sipw_B>=truet)
mean(COVE_sipw)


load("simu_nonlinear_correct_191018_n200_matching.RData")
CI_ma_L <- coef_ma2 - qnorm(0.975)*se_ma2
CI_ma_B <- coef_ma2 + qnorm(0.975)*se_ma2
COVE_ma <- (CI_ma_L<=truet)*(CI_ma_B>=truet)
mean(COVE_ma)

#########################################################################################################
#########################################################################################################
#
# MISSPECIFIED
#
#########################################################################################################
#########################################################################################################


#########################################################################################################
# Linear
#########################################################################################################
load("simu_linear_miss_191018_n200.RData")

CI_KOW_L <- coef_kow2 - qnorm(0.975)*se_kow2
CI_KOW_B <- coef_kow2 + qnorm(0.975)*se_kow2
COVE_KOW <- (CI_KOW_L<=truet)*(CI_KOW_B>=truet)
mean(COVE_KOW)

CI_SBW_L <- coef_sbw2 - qnorm(0.975)*se_sbw2
CI_SBW_B <- coef_sbw2 + qnorm(0.975)*se_sbw2
COVE_SBW <- (CI_SBW_L<=truet)*(CI_SBW_B>=truet)
sum(COVE_SBW,na.rm=T)/500


CI_ipw_L <- coef_ipw2 - qnorm(0.975)*se_ipw2
CI_ipw_B <- coef_ipw2 + qnorm(0.975)*se_ipw2
COVE_ipw <- (CI_ipw_L<=truet)*(CI_ipw_B>=truet)
mean(COVE_ipw)


CI_cbps_L <- coef_cbps2 - qnorm(0.975)*se_cbps2
CI_cbps_B <- coef_cbps2 + qnorm(0.975)*se_cbps2
COVE_cbps <- (CI_cbps_L<=truet)*(CI_cbps_B>=truet)
mean(COVE_cbps)

load("simu_linear_miss_191018_n200_TRUNC.RData")
CI_sipw_L <- coef_sipw2 - qnorm(0.975)*se_sipw2
CI_sipw_B <- coef_sipw2 + qnorm(0.975)*se_sipw2
COVE_sipw <- (CI_sipw_L<=truet)*(CI_sipw_B>=truet)
mean(COVE_sipw)

load("simu_linear_misspecified_191018_n200_matching.RData")
CI_ma_L <- coef_ma2 - qnorm(0.975)*se_ma2
CI_ma_B <- coef_ma2 + qnorm(0.975)*se_ma2
COVE_ma <- (CI_ma_L<=truet)*(CI_ma_B>=truet)
mean(COVE_ma)


#########################################################################################################
# Nonlinear
#########################################################################################################
load("simu_nonlinear_miss_191018_n200.RData")

CI_KOW_L <- coef_kow2 - qnorm(0.975)*se_kow2
CI_KOW_B <- coef_kow2 + qnorm(0.975)*se_kow2
COVE_KOW <- (CI_KOW_L<=truet)*(CI_KOW_B>=truet)
mean(COVE_KOW)

CI_SBW_L <- coef_sbw2 - qnorm(0.975)*se_sbw2
CI_SBW_B <- coef_sbw2 + qnorm(0.975)*se_sbw2
COVE_SBW <- (CI_SBW_L<=truet)*(CI_SBW_B>=truet)
sum(COVE_SBW,na.rm=T)/500


CI_ipw_L <- coef_ipw2 - qnorm(0.975)*se_ipw2
CI_ipw_B <- coef_ipw2 + qnorm(0.975)*se_ipw2
COVE_ipw <- (CI_ipw_L<=truet)*(CI_ipw_B>=truet)
sum(COVE_ipw,na.rm=T)/500


CI_cbps_L <- coef_cbps2 - qnorm(0.975)*se_cbps2
CI_cbps_B <- coef_cbps2 + qnorm(0.975)*se_cbps2
COVE_cbps <- (CI_cbps_L<=truet)*(CI_cbps_B>=truet)
sum(COVE_cbps)/500

load("simu_nonlinear_miss_191018_n200_TRUNC.RData")
CI_sipw_L <- coef_sipw2 - qnorm(0.975)*se_sipw2
CI_sipw_B <- coef_sipw2 + qnorm(0.975)*se_sipw2
COVE_sipw <- (CI_sipw_L<=truet)*(CI_sipw_B>=truet)
sum(COVE_sipw,na.rm=T)/500


load("simu_nonlinear_misspecified_191018_n200_matching.RData")
CI_ma_L <- coef_ma2 - qnorm(0.975)*se_ma2
CI_ma_B <- coef_ma2 + qnorm(0.975)*se_ma2
COVE_ma <- (CI_ma_L<=truet)*(CI_ma_B>=truet)
mean(COVE_ma)

