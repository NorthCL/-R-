png("plot_ex6.png",width = 600)
par(mfrow = c(2,1))
set.seed(30)
a = c(0,0.08)
x <- rnorm(300,mean = 8,sd = 2)
hist(x,freq = F,col = "yellow")
curve(dnorm(x,mean = 8,sd = 2),col = "brown",lwd = 2,add = T)
lines(density(x),col = "royalblue",lwd = 2)
e <- rnorm(300,mean = 0,sd = 15)
hist(e,freq = F,col = "yellow",ylim = a)
curve(dnorm(x,mean = 0,sd = 15),col = "brown",lwd = 2,add = T)
lines(density(e),col = "royalblue",lwd = 2)
par(mfrow = c(1,1))
dev.off()

