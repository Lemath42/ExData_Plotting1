#setwd('C:/Users/mathieu/Desktop/DataScience R working directory/Exploratory data analysis')
data = read.table('household_power_consumption.txt', header=TRUE, sep=";")

png("plot1.png")
hist(data[,3], main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()