setwd('C:/Users/mathieu/Desktop/DataScience R working directory/Exploratory data analysis')
data = read.table('household_power_consumption.txt', header=TRUE, sep=";")

date=strptime(paste(data[,1], data[,2], sep=" "), "%d/%m/%Y %H:%M:%S")


png("plot4.png")
par(mfrow = c(2, 2))

plot(date,data[,3], type="l", ylab="Global Active Power (kilowatts)",xlab="")

plot(date,data[,5], type="l", ylab="Voltage", xlab="datetime")

plot(date,data[,7], type="l", ylab="Energy sub metering", xlab="")
lines(date,data[,8], type="l", col="red")
lines(date,data[,9], type="l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),col=c("black", "red", "blue"), lty=1)

plot(date,data[,4], type="l", ylab="Global_reactive_power", xlab="datetime")

dev.off()