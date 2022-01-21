m=read.csv("oahu.prevalence.analysis.file.csv") 
m$Year=as.factor(m$Year);m$Species=factor(m$Species)
m=m[m$Species%in%c("JAWE","RBLE","RWBU"),] #focus analyses on 3 spp w/ large N

#Happy Squirrel Appreciation Day