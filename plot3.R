#make plot3.pgn
png(filename = "/Users/Hank/Documents/siyao/couseraR/power/plot3.png",width = 480, height = 480, units = "px")
with(data1, plot(date_time, Sub_metering_1, xlab="", ylab="Energy sub metering", type="l"))
with(data1, points(date_time, Sub_metering_2, col="red", type="l"))
with(data1, points(date_time, Sub_metering_3, col="blue", type="l"))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))
dev.off()