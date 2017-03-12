#Create plot
## Create png
png("plot3.png", width = 480, height = 480) 

##Create plot
plot(sub$DateTime, sub$Sub_metering_1, type="l", ylab= "Energy sub metering", xlab="") 

##Create extra line, color red
lines(sub$DateTime, sub$Sub_metering_2, type="l", col="red") 
##Create extra line, color blue
lines(sub$DateTime, sub$Sub_metering_3, type="l", col="blue") 

##Create legend, topright
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue")) 
dev.off() 
