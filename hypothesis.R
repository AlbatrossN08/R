data(mtcars)
head(mtcars)
sum(is.na(mtcars))
mtcars$mpg
mtcars$am
library(ggplot2)
ggplot(mtcars,aes(x=factor(am),y=mpg) )+geom_boxplot()
str(mtcars)
fit=lm(mpg~am,mtcars)
summary(fit)$coefficients
t1=t.test(mpg~am,data=mtcars)$conf.int
t1[1]
t1[2]
t.test(mpg~am,data=mtcars)$p.value
summary(fit)$r.squared
