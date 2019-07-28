plot2 <- function()
{
  dt <- read.csv("household_power_consumption.txt", sep = ";")
  
  a <- dt[which((dt$Date=="1/2/2007" | (dt$Date=="2/2/2007"))), ]
  a <- data.frame(a)
  dd <- strptime(paste0(a$Date, a$Time), "%d/%m/%Y %H:%M:%S") #Remember to keep 'Y' and not 'y' 
  f <- cbind(a, dd)
  png(file = "plot2.png", width = 480, height = 480)
  plot(dd, a$Global_active_power, type = "l", xlab = " ", ylab = "Global active power (kilowatts")
  
  dev.off()
}

