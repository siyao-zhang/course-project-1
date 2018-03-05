#join columns Date and Time into one clolumn date_time 
data1$date_time <- paste(data1$Date, data1$Time, sep=' ')

#convert the Date and Time variables to Date/Time classes
data1$date_time<-strptime(data1$date_time, "%Y-%m-%d %H:%M:%S")
  
#making plot2.png
png(filename = "/Users/Hank/Documents/siyao/couseraR/power/plot2.png",width = 480, height = 480, units = "px")
with(data1, plot(date_time, Global_active_power, xlab="", ylab="Global Active Power (kilowwatts)", type="l"))
dev.off()