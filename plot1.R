#download and unzip the dataset in my working directory
#read in dataset in R 
getwd()
data<-read.table("/Users/Hank/Documents/siyao/couseraR/power/household_power_consumption.txt", stringsAsFactors = FALSE, sep=";", dec=".", na.strings = "?", header=TRUE)

#subset dateset to dates 2007-02-01 and 2007-02-02
data$Date<-as.Date(data$Date, "%d/%m/%Y")
data1<-data[data$Date=="2007-02-01" | data$Date=="2007-02-02", ]

#making plot1.png
png(filename = "/Users/Hank/Documents/siyao/couseraR/power/plot1.png",width = 480, height = 480, units = "px")
with(data1, hist(Global_active_power, xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red", main="Global Active Power"))
dev.off()