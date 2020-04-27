source("Getting_and_processing_script.R")
with(feb1and2, 
    plot(datetime, Sub_metering_1, ylab = "Energy sub metering", type = "n")
)
        lines(feb1and2$datetime, feb1and2$Sub_metering_1, col = "black")
        lines(feb1and2$datetime, feb1and2$Sub_metering_2, col = "red")
        lines(feb1and2$datetime, feb1and2$Sub_metering_3, col = "blue")
        legend("topright", lty = c(1, 1, 1), col = c("black", "red", "blue"), 
               legend = c("Sub Metering 1", "Sub Metering 2", "Sub Metering 3")
        )
