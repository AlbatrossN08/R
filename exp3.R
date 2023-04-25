#-------Missing Values---------
d=data.frame(v1=sample(c(1:100,rep(NA,20)),50),
             v2=sample(c(1:100,rep(NA,20)),50),
             v3=sample(c(1:100,rep(NA,20)),50),
             v4=sample(c(1:100,rep(NA,20)),50),
             v5=sample(c(1:100,rep(NA,20)),50))
d
is.na(NA)
sum(is.na(d$v3))
apply(d,2,function(x)sum(is.na(x)))
d$v1[is.na(d$v1)]=mean(d$v1,na.rm=T)
d$v3[is.na(d$v3)]=median(d$v3, na.rm=T)
d$v5[is.na(d$v5)]=502
d
sum(is.na(d$v1))
sum(is.na(d$v3))
sum(is.na(d$v5))
d_new=na.omit(d)
rownames(d_new)
rownames(d_new)=1:nrow(d_new)
rownames(d_new)
