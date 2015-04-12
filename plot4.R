data <- read.table("household_power_consumption.txt",sep=';',header=TRUE,na.strings = "?")
data$timestamp <- strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")
data <- subset(data, timestamp >= "2007-02-01 00:00:00" & timestamp <= "2007-02-02 23:59:59")



png(filename = "plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2, 2))
with(data,{
    plot(timestamp,Global_active_power,type='l',xlab='',ylab='Global Active Power')

    plot(timestamp,Voltage,type='l',xlab='datetime',ylab='Voltage')
    
    plot(timestamp,Sub_metering_1,type='l',xlab='',ylab='Energy sub metering')
    lines(timestamp,Sub_metering_2,type='l',col='red')
    lines(timestamp,Sub_metering_3,type='l',col='blue')
    legend("topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2,
       col=c("black", "red", "blue"))
    

    plot(timestamp,Global_reactive_power,type='l',xlab='datetime',ylab='Global_reactive_power')
})

dev.off()