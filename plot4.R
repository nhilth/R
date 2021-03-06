df <- read.table("C:/Users/sisu/Desktop/R/household_power_consumption.txt", header = TRUE, sep = ";") 
head(df)
dim(df)                                                                                    
df <- subset(df, Date == "1/2/2007"|Date == "2/2/2007")                                     
dim(df)                                                                                    
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
with(df,plot(datetime, Global_active_power, type = "l",xlab = "", ylab = "Global Active Power"))
with(df,plot(datetime, Voltage, type = "l",xlab = "datetime", ylab = "Voltage"))
with( df, plot(datetime, Sub_metering_1, type = "l", xlab = "", ylab = "Enery sub metering"))
with(df, lines(datetime, Sub_metering_2, type = "l", col = "red"))
with(df, lines(datetime, Sub_metering_3, type = "l", col = "blue"))
legend("topright",legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1:1, bty =  "n") # lty: line type, bty: box type
with(df,plot(datetime, Global_reactive_power, type = "l",xlab = "datetime", ylab = "Global_reactive_power"))
dev.off()
