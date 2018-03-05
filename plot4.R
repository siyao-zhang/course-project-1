#make plot 4
png(filename = "/Users/Hank/Documents/siyao/couseraR/power/plot4.png",width = 480, height = 480, units = "px")
par(mfcol=c(2, 2))

  #plot2
  with(data1, plot(date_time, Global_active_power, xlab="", ylab="Global Active Power", type="l"))

  #plot3
  with(data1, plot(date_time, Sub_metering_1, xlab="", ylab="Energy sub metering", type="l"))
  with(data1, points(date_time, Sub_metering_2, col="red", type="l"))
  with(data1, points(date_time, Sub_metering_3, col="blue", type="l"))
  legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"), bty="n")

  #Voltage plot
  with(data1, plot(date_time, Voltage, xlab="datetime", ylab="Voltage", type="l"))

  #Global reactive power plot
  with(data1, plot(date_time, Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l"))

dev.off()