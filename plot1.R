library(lubridate)
raw_data<- read.table("household_power_consumption.txt",sep=";",header = TRUE)
raw_data2<- raw_data[as.character(raw_data$Date) %in% c("1/2/2007","2/2/2007"),]
attach(raw_data2)
png("plot1.png", width=480, height=480, units="px")
hist(as.numeric(as.character(Global_active_power)), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()