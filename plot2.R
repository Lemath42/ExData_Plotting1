setwd('C:/Users/mathieu/Desktop/DataScience R working directory/Exploratory data analysis')
data = read.table('household_power_consumption.txt', header=TRUE, sep=";")

date=strptime(paste(data[,1], data[,2], sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png")
plot(date,data[,3], type="l", ylab="Global Active Power (kilowatts)",xlab="")
dev.off()