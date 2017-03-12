#Creating Plot4: 

#Create png
png("plot4.png", width = 480, height = 480) 

#Create parameters, 4plots in 1 picture, 
par(mfcol=c(2,2)) 

#Create first plot (left, up)
plot(sub$DateTime, sub$Global_active_power, type= "l", lwd=1, ylab= "Global Active Power (kilowatts)", xlab="") 

#Create second plot, line 1 (left, down)
plot(sub$DateTime, sub$Sub_metering_1, type="l", ylab= "Energy sub metering", xlab="") 
##Create second plot, line 2 (left, down)
lines(sub$DateTime, sub$Sub_metering_2, type="l", col="red") 
##Create second plot, line 3 (left, down)
lines(sub$DateTime, sub$Sub_metering_3, type="l", col="blue") 
##Create legend
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, bty="n", col=c("black", "red", "blue"))

# Create third plot (right, up)
plot(sub$DateTime, sub$Voltage, type="l", xlab="datetime", ylab="Voltage")   

#Create fourth plot (right, down)
plot(sub$DateTime, sub$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")  

dev.off() 