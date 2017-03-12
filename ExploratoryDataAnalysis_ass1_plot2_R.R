# Changing the class of Date from character to Date:  
sub$Date <- as.Date(sub$Date, format = "%d/%m/%Y") 

# Combining the Date and Time in a new column (DateTime): 
sub$DateTime <- as.POSIXct(paste(sub$Date, sub$Time)) 

# Creating Plot2: 
## Create png
png("plot2.png", width=480, height= 480) 

##Create plot
plot(sub$DateTime, sub$Global_active_power, type= "l", lwd=1, ylab= "Global Active Power (kilowatts)", xlab="") 
dev.off() 
