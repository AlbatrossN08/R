data(cars)
head(cars)
summary(cars)
boxplot(cars$speed,main="speed",
 sub=paste("outlier rows:",boxplot.stats(cars$speed)$out))
boxplot(cars$dist,main="distance",
 sub=paste("outliers rows:",boxplot.stats(cars$dist)$out))
linearmodel=lm(dist~speed,data=cars)
summary(linearmodel)
