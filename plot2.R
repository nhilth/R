df <- read.table("C:/Users/sisu/Desktop/R/household_power_consumption.txt", header = TRUE, sep = ";") 
head(df)
dim(df)                                                                                    
df <- subset(df, Date == "1/2/2007"|Date == "2/2/2007")                                               # "|" is OR                                  
dim(df)                                                                                    
png("plot2.png", width = 480, height = 480)         
datetime <- strptime(paste(df$Date, df$Time, sep=" "), "%d/%m/%Y %H:%M:%S")                            # paste = + string; as.Date(); strptime = from_timestamp
with(df,plot(datetime, Global_active_power, type = "l",xlab = "", ylab = "Global Active Power"))
dev.off()
