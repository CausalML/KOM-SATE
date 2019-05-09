
library(splines)


setwd("/Users/micsan/Google Drive/Cornell/data/")
#setwd("/home/micsan/research/Research/projects/Cornell/Longitudinal/data/")


DF <- 3
LWD <- 3
CEX <- 1.5

grey <- c("grey0", "grey35", "grey50", "grey75")


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
load("simu_linear_miss_191018_n200.RData")
LWD <- 3

len <- length(COEF_KOW-truet)

maxxB <- max((COEF_KOW-truet)^2,(COEF_IPW-truet)^2,(COEF_SBW-truet)^2,(COEF_CBPS-truet)^2,1.4)


par(mar=c(4,4,0,4))
layout(matrix(c(1,2,3,4,1,5,3,6),ncol=2),heights=c(1,2,1,2))
plot.new()

text(0.5,0.5,"Misspecified Linear",cex=2,font=2)
text(0.5,0.1,expression(paste("KOM-",Kappa[3] ,", cubic IPTW, tIPTW, PSM, RA, CBPS, and SBW")),cex=1.5,font=1)
#text(0.5,0.5,expression(paste("KOM-", Kappa[0], "bla")))


len <- length(COEF_KOW-truet)

maxxB2 <- max((COEF_KOW2-truet)^2,(COEF_IPW2-truet)^2,(COEF_SBW2-truet)^2,(COEF_CBPS2-truet)^2,4,na.rm=T)

plot(seqqbeta[1:len],(COEF_KOW2-truet)^2,type="l",ylim=c(0,maxxB2),lwd=LWD, xlab = "", ylab="",cex.lab=CEX, cex.axis=CEX, cex.main=CEX, cex.sub=CEX,cex=CEX, xaxt = "n")

legend("topleft", legend=c(expression(paste("KOM-",Kappa[3])), "cubic IPTW", "tIPTW", "PSM", "RA","CBPS", "SBW"),
       lty=c( 1,2,5,6, 1,4,3 ),pch=c(19,rep(NA,6)), col=c(grey[1],grey[2],grey[2],grey[2],grey[4],grey[3],grey[3]), cex=1, box.lty=0, y.intersp=0.5,x.intersp=0.25,lwd=rep(LWD,7),seg.len=3,bty = "n")


points(seqqbeta[1:len],(COEF_KOW2-truet)^2,cex=CEX,pch=19)
axis(1,at=c(0.1,1.5,3), labels=c("Weak","Moderate","Strong"), cex.axis=CEX)
mtext(text="Squared Bias",side=2,line=2.5)
mtext(text="Strength of practical positivity violation",side=1,line=3)
abline(h=0)
lines(seqqbeta[1:len],(COEF_IPW2-truet)^2,lty=2,lwd=LWD,col=grey[2])

lines(seqqbeta[1:len],(COEF_CBPS2-truet)^2,lty=4,lwd=LWD,col=grey[3])


load("simu_linear_miss_191018_n200_TRUNC.RData")
lines(seqqbeta[1:len],(COEF_SIPW2-truet)^2,lty=5,lwd=LWD,col=grey[2])

load("simu_linear_misspecified_191018_n200_matching.RData")
lines(seqqbeta[1:len],(COEF_MA2-truet)^2,lty=6,lwd=LWD,col=grey[2])

load("simu_linear_miss_191018_n200_sbw.RData")
lines(seqqbeta[1:len],(COEF_SBW2-truet)^2,lty=3,lwd=LWD,col=grey[3])

load("simu_linear_miss_191018_n200_OLS.RData")
lines(seqqbeta[1:len],(COEF_RA2-truet)^2,lty=1,lwd=LWD,col=grey[4])





#########################################################################################################
# NonLinear
#########################################################################################################
load("simu_nonlinear_miss_191018_n200.RData")
LWD <- 3

len <- length(COEF_KOW-truet)

maxxB2 <- max((COEF_KOW2-truet)^2,(COEF_IPW2-truet)^2,(COEF_SBW2-truet)^2,(COEF_CBPS2-truet)^2,6,na.rm=T)


plot.new()

text(0.5,0.5,"Misspecified Nonlinear",cex=2,font=2)
text(0.5,0.1,expression(paste("KOM-",Kappa[3] ,", cubic IPTW, tIPTW, PSM, RA, CBPS, and SBW")),cex=1.5,font=1)
#text(0.5,0.5,expression(paste("KOM-", Kappa[0], "bla")))



plot(seqqbeta[1:len],(COEF_KOW2-truet)^2,type="l",ylim=c(0,maxxB2),lwd=LWD, xlab = "", ylab="",cex.lab=CEX, cex.axis=CEX, cex.main=CEX, cex.sub=CEX,cex=CEX, xaxt = "n")


points(seqqbeta[1:len],(COEF_KOW2-truet)^2,cex=CEX,pch=19)
axis(1,at=c(0.1,1.5,3), labels=c("Weak","Moderate","Strong"), cex.axis=CEX)
mtext(text="Squared Bias",side=2,line=2.5)
mtext(text="Strength of practical positivity violation",side=1,line=3)
abline(h=0)
lines(seqqbeta[1:len],(COEF_IPW2-truet)^2,lty=2,lwd=LWD,col=grey[2])

lines(seqqbeta[1:len],(COEF_CBPS2-truet)^2,lty=4,lwd=LWD,col=grey[3])


load("simu_nonlinear_miss_191018_n200_TRUNC.RData")
lines(seqqbeta[1:len],(COEF_SIPW2-truet)^2,lty=5,lwd=LWD,col=grey[2])

load("simu_nonlinear_misspecified_191018_n200_matching.RData")
lines(seqqbeta[1:len],(COEF_MA2-truet)^2,lty=6,lwd=LWD,col=grey[2])

load("simu_nonlinear_miss_191018_n200_sbw.RData")
lines(seqqbeta[1:len],(COEF_SBW2-truet)^2,lty=3,lwd=LWD,col=grey[3])


load("simu_nonlinear_miss_191018_n200_OLS.RData")
lines(seqqbeta[1:len],(COEF_RA2-truet)^2,lty=1,lwd=LWD,col=grey[4])





#########################################################################################################
# NonLinear - MSE
#########################################################################################################


load("simu_linear_miss_191018_n200.RData")

maxxM2 <- max(MSE_KOW2,MSE_SBW2,MSE_IPW2,MSE_CBPS2,4,na.rm=T)

plot(seqqbeta[1:len],MSE_KOW2,type="l",ylim=c(0,maxxM2), xlab = "", lwd=LWD,ylab="",cex.lab=CEX, cex.axis=CEX, cex.main=CEX, cex.sub=CEX,cex=CEX, xaxt = "n")
points(seqqbeta[1:len],MSE_KOW2,cex=CEX,pch=19)
axis(1,at=c(0.1,1.5,3), labels=c("Weak","Moderate","Strong"), cex.axis=CEX)
#mtext(text="Sample size",side=1,line=3)
mtext(text="MSE",side=2,line=2.5)
mtext(text="Strength of practical positivity violation",side=1,line=3)
abline(h=0)
lines(seqqbeta[1:len],MSE_IPW2,lty=2,lwd=LWD,col=grey[2])

lines(seqqbeta[1:len],MSE_CBPS2,lty=4,lwd=LWD,col=grey[3])

load("simu_linear_miss_191018_n200_TRUNC.RData")
lines(seqqbeta[1:len],MSE_SIPW2,lty=5,lwd=LWD,col=grey[2])

load("simu_linear_misspecified_191018_n200_matching.RData")
lines(seqqbeta[1:len],MSE_MA2,lty=6,lwd=LWD,col=grey[2])

load("simu_linear_miss_191018_n200_sbw.RData")
lines(seqqbeta[1:len],MSE_SBW2,lty=3,lwd=LWD,col=grey[3])


load("simu_linear_miss_191018_n200_OLS.RData")
lines(seqqbeta[1:len],MSE_RA2,lty=1,lwd=LWD,col=grey[4])

#########################################################################################################
# NonLinear - MSE
#########################################################################################################


load("simu_nonlinear_miss_191018_n200.RData")

maxxM2 <- max(MSE_KOW2,MSE_SBW2,MSE_IPW2,MSE_CBPS2,4,na.rm=T)

plot(seqqbeta[1:len],MSE_KOW2,type="l",ylim=c(0,maxxM2), xlab = "", lwd=LWD,ylab="",cex.lab=CEX, cex.axis=CEX, cex.main=CEX, cex.sub=CEX,cex=CEX, xaxt = "n")
points(seqqbeta[1:len],MSE_KOW2,cex=CEX,pch=19)
axis(1,at=c(0.1,1.5,3), labels=c("Weak","Moderate","Strong"), cex.axis=CEX)
#mtext(text="Sample size",side=1,line=3)
mtext(text="MSE",side=2,line=2.5)
mtext(text="Strength of practical positivity violation",side=1,line=3)
abline(h=0)
lines(seqqbeta[1:len],MSE_IPW2,lty=2,lwd=LWD,col=grey[2])

lines(seqqbeta[1:len],MSE_CBPS2,lty=4,lwd=LWD,col=grey[3])

load("simu_nonlinear_miss_191018_n200_TRUNC.RData")
lines(seqqbeta[1:len],MSE_SIPW2,lty=5,lwd=LWD,col=grey[2])

load("simu_nonlinear_misspecified_191018_n200_matching.RData")
lines(seqqbeta[1:len],MSE_MA2,lty=6,lwd=LWD,col=grey[2])

load("simu_nonlinear_miss_191018_n200_sbw.RData")
lines(seqqbeta[1:len],MSE_SBW2,lty=3,lwd=LWD,col=grey[3])


load("simu_nonlinear_miss_191018_n200_OLS.RData")
lines(seqqbeta[1:len],MSE_RA2,lty=1,lwd=LWD,col=grey[4])

