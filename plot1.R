setwd("C:/Users/Daizh/Desktop/R/exdata_data_household_power_consumption")
my_data <- read.table("household_power_consumption.txt",sep = ";", header = TRUE,stringsAsFactors = FALSE)
my_data[,"Date"] <- as.Date(my_data[,"Date"], format = "%d/%m/%Y")
data2days <- subset(my_data, my_data$Date == "2007-02-01"|my_data$Date=="2007-02-02" )
data2days$Global_active_power <- suppressWarnings(as.numeric(data2days$Global_active_power))
png("plot1.png", width = 480,  height = 480)
hist(data2days$Global_active_power, col = "red", main = "Global Active Power",
xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()