m=read.csv("oahu.prevalence.analysis.file.csv") 
m$Year=as.factor(m$Year);m$Species=factor(m$Species)
m=m[m$Species%in%c("JAWE","RBLE","RWBU"),] #focus analyses on 3 spp w/ large N
m$tmax_Z=(m$tmax-mean(m$tmax))/(2*sd(m$tmax)) #Z-transforming temp. Not needed. 
m$Species=relevel(m$Species,ref="RBLE");m$Year=relevel(m$Year,ref="2016")
f1=glm(result_0_1~Year*tmax_Z+Species*tmax_Z,data=m,family=binomial);summary(f1) #orig model but need to drop age = u to match orig table

#Does this work?
#plot
