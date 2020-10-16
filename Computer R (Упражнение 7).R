png("plot-ex07.png", width = 600)
dfRegions <-  read.csv2("regions.csv", stringsAsFactors = T)
dfRegions
x <- c(dfRegions$year_2005)
d <- c(dfRegions$year_2009)
y <- c(dfRegions$year_2013)
z <- c(dfRegions$year_2017)
XYZ <- cbind(x/sum(x),d/sum(d), y/sum(y), z/sum(z))
colnames(XYZD) <- c("2005","2009", "2013", "2017")
rownames(XYZD) <- dfRegions$финансы
barplot(XYZD, main = "Нижегородская область", beside = F,col = cm.colors(3,alpha = 1))
legend("topright", legend = rownames(XYZ), fill = cm.colors(3, alpha = 1))
dev.off()
