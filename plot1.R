setwd("/Users/Yanshu/Desktop/coursera")
data<-read.table("household_power_consumption.txt", sep=';', header=TRUE,na.strings="?")
data$Date<-as.Date(data$Date,format="%d/%m/%Y")
subdata <- subset(data, Date >= "2007-02-01" & Date <="2007-02-02")
hist(subdata$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")

dev.copy(png,file="plot1.png",width=480,height=480)
dev.off()

