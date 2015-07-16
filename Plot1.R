par(bg="white",mar=c(4,4,2,2))
cols=c("character","character",rep("numeric",7))
frm<-read.table(file="e:/ds/EXP/household_power_consumption.txt",sep=";",header=T,stringsAsFactors=F,colClasses=cols,na.strings="?")
frm2<-frm[frm$Date == "1/2/2007" | frm$Date == "2/2/2007",]
png(file="e:/ds/EXP/plot1.png",width=480,height=480,units="px",type="cairo")
hist(frm2$Global_active_power,col="red",xlab="Global Active Power (killowatts)",main="Global Active Power")
dev.off()
