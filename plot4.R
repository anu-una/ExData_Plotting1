plot4 <- function()
{
  
  dt <- read.csv("household_power_consumption.txt", sep = ";")
  
  a <- dt[which((dt$Date=="1/2/2007" | (dt$Date=="2/2/2007"))), ]
  a <- data.frame(a)
  dd <- strptime(paste0(a$Date, a$Time), "%d/%m/%Y %H:%M:%S") #Remember to keep 'Y' and not 'y' 
  f <- cbind(a, dd)
  png(file = "plot4.png", width = 480, height = 480)
  par(mfrow = c(2,2))
  plot(f$dd, f$Global_active_power, xlab = "", ylab = "Global Active Power", col = "Black", type = "l")
  plot(f$dd, f$Voltage, xlab = "datetime", ylab = "Voltage", col = "black", type = "l")
  plot(f$dd, f$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l", col = "black")
  lines(f$dd, f$Sub_metering_2, col = "red")
  lines(f$dd, f$Sub_metering_3, col = "blue")
  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1),  col = c("black", "red", "blue"))
  
  plot(f$dd, f$Global_reactive_power, xlab = "datetime", ylab = "Global Reactive Power", col = "blue", type = "l")
  dev.off()
}
  
  