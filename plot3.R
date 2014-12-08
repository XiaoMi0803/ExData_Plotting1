setwd("/Users/Yanshu/Desktop/coursera")
data<-read.table("household_power_consumption.txt", sep=';', header=TRUE,na.strings="?")
data$Date<-as.Date(data$Date,format="%d/%m/%Y")
subdata <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")
subdata$DateTime <- as.POSIXct(paste(subdata$Date, subdata$Time))
plot(subdata$Sub_metering_1~subdata$DateTime,type="l", ylab="Energy sub metering")
lines(subdata$Sub_metering_2~subdata$DateTime,col="red")
lines(subdata$Sub_metering_3~subdata$DateTime,col="blue")
legend( "topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, lwd=2,cex=0.5)

dev.copy(png,file="plot3.png",width=480,height=480)
dev.off()

