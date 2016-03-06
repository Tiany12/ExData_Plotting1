raw_data<- read.table("household_power_consumption.txt",sep=";",header = TRUE)
raw_data2<- raw_data[as.character(raw_data$Date) %in% c("1/2/2007","2/2/2007"),]
raw_data2$dateTime = paste(raw_data2$Date, raw_data2$Time)
raw_data2$dateTime <- strptime(raw_data2$dateTime, "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480, units="px")
plot(raw_data2$dateTime, as.numeric(as.character(raw_data2$Global_active_power)), type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()