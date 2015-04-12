data <- read.table("household_power_consumption.txt",sep=';',header=TRUE,na.strings = "?")
data$timestamp <- strptime(paste(data$Date,data$Time),"%d/%m/%Y %H:%M:%S")
data <- subset(data, timestamp >= "2007-02-01 00:00:00" & timestamp <= "2007-02-02 23:59:59")

png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(data$Global_active_power,col='red',xlab = 'Global Active Power (kilowatts)',main='Global Active Power')
dev.off()  