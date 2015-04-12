#data <- read.table("household_power_consumption.txt",sep=';',header=TRUE,na.strings = "?")
#data$timestamp <- strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")
#data <- subset(data, timestamp >= "2007-02-01 00:00:00" & timestamp <= "2007-02-02 23:59:59")

png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(data$Global_active_power,col='red',xlab = 'Global Active Power (kilowatts)',main='Global Active Power')
dev.off() 

png(filename = "plot2.png", width = 480, height = 480, units = "px")
with(data,plot(timestamp,Global_active_power,type='l',xlab='',ylab='Global Active Power (kilowatts)'))
dev.off() 

png(filename = "plot3.png", width = 480, height = 480, units = "px")
with(data,plot(timestamp,Sub_metering_1,type='l',xlab='',ylab='Energy sub metering'))
with(data,lines(timestamp,Sub_metering_2,type='l',col='red'))
with(data,lines(timestamp,Sub_metering_3,type='l',col='blue'))
dev.off() 