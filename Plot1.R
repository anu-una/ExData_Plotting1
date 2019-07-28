plot1 <- function()
{
  dt <- read.csv("household_power_consumption.txt", sep = ";")
  
  a <- dt[which((dt$Date=="1/2/2007" | (dt$Date=="2/2/2007"))), ]
  a <- data.frame(a)
  png(file = "plot1.png", width  =480, height = 480)
  hist(as.numeric(a$Global_active_power), col = "red", main = "Global Active Power", xlab = "Global Active Power (Kilowatts)")
  dev.off()
  
  
}

