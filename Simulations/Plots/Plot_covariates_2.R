
library(splines)


setwd("/Users/micsan/Google Drive/Cornell/data/")
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

###KOM

load("simu_linear_correct_191018_n200.RData")

data1 <- data.frame((COEF_KOW-truet),MSE_KOW)[5,]
colnames(data1) <- c("bias_kow","mse_kow")
write.table(data1,"one")

load("simu_linear_correct_191018_n200_20X.RData")

data2 <- data.frame((COEF_KOW-truet),MSE_KOW)
colnames(data2) <- c("bias_kow","mse_kow")
write.table(data2,"two")

load("simu_linear_correct_191018_n200_50X_b.RData")

data3 <- data.frame((COEF_KOW-truet),MSE_KOW)
colnames(data3) <- c("bias_kow","mse_kow")
write.table(data3,"three")

load("simu_linear_correct_191018_n200_100X.RData")

data4 <- data.frame((COEF_KOW-truet),MSE_KOW)
colnames(data4) <- c("bias_kow","mse_kow")
write.table(data4,"four")

one <- read.table("one")
two <- read.table("two")
three <- read.table("three")
four <- read.table("four")

data_kow <- rbind(one,two,three,four)
data_kow


###SBW

load("simu_linear_correct_191018_n200.RData")

data1 <- data.frame((COEF_SBW-truet),MSE_SBW)[5,]
colnames(data1) <- c("bias_sbw","mse_sbw")
write.table(data1,"one")

load("simu_linear_correct_191018_n200_20X_sbw.RData")

data2 <- data.frame((COEF_SBW-truet),MSE_SBW)
colnames(data2) <- c("bias_sbw","mse_sbw")
write.table(data2,"two")

load("simu_linear_correct_191018_n200_50X_sbw.RData")

data3 <- data.frame((COEF_SBW-truet),MSE_SBW)
colnames(data3) <- c("bias_sbw","mse_sbw")
write.table(data3,"three")

load("simu_linear_correct_191018_n200_100X_sbw.RData")

data4 <- data.frame((COEF_SBW-truet),MSE_SBW)
colnames(data4) <- c("bias_sbw","mse_sbw")
write.table(data4,"four")

one <- read.table("one")
two <- read.table("two")
three <- read.table("three")
four <- read.table("four")

data_sbw <- rbind(one,two,three,four)
data_sbw





###RA

load("simu_linear_correct_191018_n200_OLS.RData")

data1 <- data.frame((COEF_RA-truet),MSE_RA)[5,]
colnames(data1) <- c("bias_ra","mse_ra")
write.table(data1,"one")

load("simu_linear_correct_191018_n200_20X_OLS.RData")

data2 <- data.frame((COEF_RA-truet),MSE_RA)
colnames(data2) <- c("bias_ra","mse_ra")
write.table(data2,"two")

load("simu_linear_correct_191018_n200_50X_OLS.RData")

data3 <- data.frame((COEF_RA-truet),MSE_RA)
colnames(data3) <- c("bias_ra","mse_ra")
write.table(data3,"three")

load("simu_linear_correct_191018_n200_100X_OLS.RData")

data4 <- data.frame((COEF_RA-truet),MSE_RA)
colnames(data4) <- c("bias_ra","mse_ra")
write.table(data4,"four")

one <- read.table("one")
two <- read.table("two")
three <- read.table("three")
four <- read.table("four")

data_ra <- rbind(one,two,three,four)
data_ra



LWD <- 3
CEX <- 1.5

len <- 4
seqqn <- c(2,20,50,100)

par(mar=c(4,4,0,4))
layout(matrix(c(1,2,3,4,1,5,3,6),ncol=2),heights=c(1,2,1,2))
plot.new()

text(0.5,0.5,"Correct Linear",cex=2,font=2)
text(0.5,0.1,expression(paste("KOM-",Kappa[1] ," RA",", linear SBW")),cex=1.5,font=1)

#plot(seqqn,data$bias_sbw^2/data$bias_kow^2,type="l",ylim=c(0,8),lwd=LWD, xlab = "", ylab="",cex.lab=CEX, cex.axis=CEX, cex.main=CEX, cex.sub=CEX,cex=CEX, xaxt = "n")
plot(seqqn,data_sbw$bias_sbw^2,type="l",lty=3,lwd=LWD,ylim=c(0,200), xlab = "", ylab="",cex.lab=CEX, cex.axis=CEX, cex.main=CEX, cex.sub=CEX,cex=CEX, xaxt = "n",col=grey[3])

legend("topleft", legend=c(expression(paste("KOM-",Kappa[1])), "RA", "linear SBW"),
       lty=c( 1,1,3 ),pch=c(19,rep(NA,2)), col=c(grey[1],grey[4],grey[3]), cex=1, box.lty=0, y.intersp=0.5,x.intersp=0.25,lwd=rep(LWD,7),seg.len=3,bty = "n")


lines(seqqn,data_kow$bias_kow^2,type="l",lty=1,lwd=LWD)
lines(seqqn,data_ra$bias_ra^2,type="l",lty=1,lwd=LWD,col=grey[4])
points(seqqn,data_kow$bias_kow^2,cex=CEX,pch=19)
axis(1,at=c(2,20,50,100), labels=c("2","20","50","100"), cex.axis=CEX)
#axis(2,at=c(0,2,4,6,8,10,12,14), labels=c("0","2","4","6","8","10","12","14"), cex.axis=CEX)
mtext(text="Number of confounders",side=1,line=3)
mtext(text="Squared Bias",side=2,line=2.5)
abline(h=0)




plot.new()
plot.new()


#########################################################################################################
#########################################################################################################
#
# CORRECT
#
#########################################################################################################
#########################################################################################################



LWD <- 3

len <- 4
seqqn <- c(2,20,50,100)

#plot(seqqn,data$mse_sbw/data$mse_kow,type="l",ylim=c(0,8),lwd=LWD, xlab = "", ylab="",cex.lab=CEX, cex.axis=CEX, cex.main=CEX, cex.sub=CEX,cex=CEX, xaxt = "n")
plot(seqqn,data_kow$mse_kow,type="l",ylim=c(0,200),lwd=LWD, xlab = "", ylab="",cex.lab=CEX, cex.axis=CEX, cex.main=CEX, cex.sub=CEX,cex=CEX, xaxt = "n",col=grey[1])
lines(seqqn,data_sbw$mse_sbw,type="l",lty=3,lwd=LWD,col=grey[3])
lines(seqqn,data_ra$mse_ra,type="l",lty=1,lwd=LWD,col=grey[4])
points(seqqn,data_kow$mse_kow,cex=CEX,pch=19)
axis(1,at=c(2,20,50,100), labels=c("2","20","50","100"), cex.axis=CEX)
mtext(text="Number of confounders",side=1,line=3)
mtext(text="MSE",side=2,line=2.5)
abline(h=0)


