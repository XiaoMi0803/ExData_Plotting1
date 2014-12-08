setwd("/Users/Yanshu/Desktop/coursera")
data<-read.table("household_power_consumption.txt", sep=';', header=TRUE,na.strings="?")
data$Date<-as.Date(data$Date,format="%d/%m/%Y")
subdata <- subset(data, Date >= "2007-02-01" & Date <= "2007-02-02")
subdata$DateTime <- as.POSIXct(paste(subdata$Date, subdata$Time))
plot(subdata$Global_active_power~subdata$DateTime, type="l",ylab="Global Active Power (kilowatts)", xlab="")

dev.copy(png,file="plot2.png",width=480,height=480)
dev.off()

