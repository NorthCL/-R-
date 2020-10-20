#а - мат ожидание x
#b - среднеквадратическое отклонение x
#c - мат ожидание e
#d - среднеквадратическое отклонение е
#n - кол-во чисел
Function.NC <- function(a, b, c, d, n) 
{
  set.seed(30)
  x <- rnorm(n , mean = a, sd = b)
  e <- rnorm(n, c, d)
  y <- 100 - 6*x + e
  layout(matrix(c(1,2,2,1,2,2,4,3,3),nrow = 3,byrow = T))
  boxplot(y,pch = 20,cex = 1,col = "red")
  plot(x,y,pch = 20,cex = 2,col = "red")
  boxplot(x,pch = 20,cex = 1,horizontal = T,col = "red")
}
Function.NC (8, 2, 0, 15, 300)