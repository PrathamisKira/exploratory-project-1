data <- read.csv("C:/Users/Dell/OneDrive/Documents/data/exploratory-project-1/household_power_consumption.txt", header = TRUE, sep = ';', na.strings = "?")
data_full$Date <- as.Date(data_full$Date, format="%d/%m/%Y")


data$Date <- as.Date(data$Date, format="%d/%m/%Y")
datas <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
datetime <- paste(as.Date(datas$Date), datas$Time)
datas$Datetime <- as.POSIXct(datetime)

plot(datas$Global_active_power~datas$Datetime, type="l",ylab="Global Active Power (kilowatts)", xlab="")



dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
