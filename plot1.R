df <- read.table("C:/Users/sisu/Desktop/R/household_power_consumption.txt", header = TRUE, sep = ";") -- import Data to R
head(df)
dim(df)                                                                                     -- check imported Data
df <- subset(df, Date == "1/2/2007"|Date == "2/2/2007")                                     -- limit data
dim(df)                                                                                     -- check result
png("plot1.png", width = 480, height = 480)
hist(as.numeric(df$Global_active_power), main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()
