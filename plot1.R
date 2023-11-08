data <- read.csv("C:/Users/Dell/OneDrive/Documents/data/exploratory-project-1/household_power_consumption.txt", header = TRUE, sep = ';', na.strings = "?")
data_full$Date <- as.Date(data_full$Date, format="%d/%m/%Y")


data$Date <- as.Date(data$Date, format="%d/%m/%Y")
datas <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
datetime <- paste(as.Date(datas$Date), datas$Time)
datas$Datetime <- as.POSIXct(datetime)

hist(datas$Global_active_power, main = "Global Active Power",
     +      xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "Red")

dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
