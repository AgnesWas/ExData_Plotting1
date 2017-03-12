# Coursera Exploratory Data Analysis
# Assignment week 1
# Plot 1

#setwd
setwd("~/R/Exploratory Data Analysis")

#reading data into R
datahh<- read.table("/Users/Agnes/Documents/R/Exploratory Data Analysis/household_power_consumption.txt", sep=";",nrows= 2075260, header=TRUE, quote= "", strip.white=TRUE, stringsAsFactors = FALSE, na.strings= "?")

#make a subset of dates 1/2-2/2
sub<- subset(datahh, (datahh$Date == "1/2/2007" | datahh$Date== "2/2/2007")) 

#make plot 1(histogram, red, global active power, frequency)
##create png
png("plot1.png", width=480, height= 480)

##create histogram
hist(sub$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main= "Global Active Power")
dev.off()