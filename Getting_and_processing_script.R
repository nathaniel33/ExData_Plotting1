# Download and read data into R

URL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(URL, destfile = "household_power_consumption.zip", method = "curl")
unzip("household_power_consumption.zip")
household_power_consumption <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", colClasses = "character")

# Subset for 2007-02-01 and 2007-02-02

feb1 <- household_power_consumption[household_power_consumption$Date == "1/2/2007", ]
feb2 <- household_power_consumption[household_power_consumption$Date == "2/2/2007", ]
feb1and2 <- rbind(feb1, feb2)
rm(list = c("feb1", "feb2", "household_power_consumption"))

# Make a "datetime" column for plotting

feb1and2$datetime <- paste(feb1and2$Date, feb1and2$Time)
feb1and2$datetime <- strptime(feb1and2$datetime, "%d/%m/%Y %H:%M:%S")

# Coerce "Global_active_power" column into numeric to make the histogram of plot1

feb1and2$Global_active_power <- as.numeric(feb1and2$Global_active_power <- as.numeric(feb1and2$Global_active_power)
)
