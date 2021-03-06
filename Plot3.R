par(bg="white",mar=c(4,4,2,2))
cols=c("character","character",rep("numeric",7))
frm<-read.table(file="e:/ds/EXP/household_power_consumption.txt",sep=";",header=T,stringsAsFactors=F,colClasses=cols,na.strings="?")
frm2<-frm[frm$Date == "1/2/2007" | frm$Date == "2/2/2007",]
frm2$DateTime<-strptime(paste(frm2$Date,frm2$Time),"%d/%m/%Y %H:%M:%S")
png(file="e:/ds/EXP/plot3.png",width=480,height=480,units="px",type="cairo")
with(frm2, plot(DateTime,as.numeric(Sub_metering_1), type="n",xlab="",ylab="Energy sub metering"))
points(frm2$DateTime, frm2$Sub_metering_1, type="l")
points(frm2$DateTime, frm2$Sub_metering_2, type="l",col="red")
points(frm2$DateTime, frm2$Sub_metering_3, type="l",col="blue")
legend("topright",lwd=1,legend =c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","blue","red"))
dev.off()

