data <- read.table("household_power_consumption.txt",sep = ";", header = TRUE,stringsAsFactors = FALSE)
data[,"Date"]= as.Date(data[,"Date"], format = "%d/%m/%Y")
my_data <- subset (data, Date == "2007-02-01"| Date =="2007-02-02")
datatime <- strptime(paste(my_data[,"Date"], my_data[,"Time"], sep = " "), format = "%Y-%m-%d %H:%M:%S")
GlobalAP <-as.numeric(my_data$Global_active_power)
png("plot2.png", width = 480, height = 480)
plot(datatime, GlobalAP, type = "l", xlab = " ", ylab = "Global Active Power (kilowattes)")
dev.off()
