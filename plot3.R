plot3 <- function()
{
  
  dt <- read.csv("household_power_consumption.txt", sep = ";")
  
  a <- dt[which((dt$Date=="1/2/2007" | (dt$Date=="2/2/2007"))), ]
  a <- data.frame(a)
  dd <- strptime(paste0(a$Date, a$Time), "%d/%m/%Y %H:%M:%S") #Remember to keep 'Y' and not 'y' 
  f <- cbind(a, dd)
  
  png( file = "plot3.png", width = 480, height = 480)
  plot(f$dd, f$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "l", col = "black")
  lines(f$dd, f$Sub_metering_2, col = "red")
  lines(f$dd, f$Sub_metering_3, col = "blue")
  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1),  col = c("black", "red", "blue"))
  dev.off()
  
}