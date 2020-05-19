data <- read.table("household_power_consumption.txt",sep=";",skip=grep("1/2/2007",readLines("household_power_consumption.txt")),nrows = 2880,na.strings= c("?"))
colnames(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

png("plot1.png",width = 480, height = 480)
hist(data$Global_active_power,col="red",main = title("Global Active Power"),xlab = "Global Active Power (kilowatts)",breaks = 12, xlim = range(0:8),ylim = range(0:1200), xaxt = "n")
axis(1,at=c(0,2,4,6), las = 1)
dev.off()