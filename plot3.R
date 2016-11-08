setwd('C:/Users/mathieu/Desktop/DataScience R working directory/Exploratory data analysis')
data = read.table('household_power_consumption.txt', header=TRUE, sep=";")

date=strptime(paste(data[,1], data[,2], sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot3.png")
plot(date,data[,7], type="l", ylab="Energy sub metering", xlab="")
lines(date,data[,8], type="l", col="red")
lines(date,data[,9], type="l", col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),col=c("black", "red", "blue"), lty=1)
dev.off()