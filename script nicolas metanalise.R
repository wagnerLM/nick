library(meta)
nick<-read.csv("https://raw.githubusercontent.com/wagnerLM/nick/master/datanick",sep=";")
#View(nick)
#?metacont()
nick_meta<-metacont(n.e=nick$ne,mean.e=nick$me,sd.e=nick$sde,n.c=nick$nc,mean.c=nick$mc,sd.c=nick$sdc,studlab = nick$studlab,method.smd="Cohen",sm="SMD")
nick_meta
summary(nick_meta)
forest(nick_meta)
