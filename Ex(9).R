Function.NC <- function(a, b, c, d, n) 
{
  set.seed(30)
  par(mfrow = c(2, 1))
  x <- rnorm(n , mean = a, sd = b)
  e <- rnorm(n, c, d)
  #layout(matrix(c(1,2,2,1,2,2,4,3,3),nrow = 3,byrow = T))
  hist(x,freq = F,ylim = c(0,0.2),col = "yellow")
  curve(dnorm(x,mean = a,sd = b),col = "brown",lwd = 2,add = T)
  lines(density(x),col = "royalblue",lwd = 2)
  hist(e,freq = F,col = "yellow")
  curve(dnorm(x,mean = c,sd = d),col = "brown",lwd = 2,add = T)
  lines(density(e),col = "royalblue",lwd = 2)
  par(mfrow = c(1,1))
  # коэффициент Джини
  # без учёта аномальных1
  # (можно использовать
  # циклы)
  return()
}
 Function.NC (8, 2, 0, 15, 300)