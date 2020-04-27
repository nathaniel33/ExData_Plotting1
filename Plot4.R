source("Getting_and_processing_script.R")
par(mfrow = c(2, 2), mar = c(4, 4, 1, 1))
with(feb1and2, {
    plot(datetime, Global_active_power, ylab = "Global Active Power", type = "l")
    plot(datetime, Voltage, type = "l")
    plot(datetime, Sub_metering_1, ylab = "Energy sub metering", type = "n")
    lines(datetime, Sub_metering_1, col = "black")
    lines(datetime, Sub_metering_2, col = "red")
    lines(datetime, Sub_metering_3, col = "blue")
    legend("topright", lty = c(1, 1, 1), col = c("black", "red", "blue"), 
           legend = c("Sub Metering 1", "Sub Metering 2", "Sub Metering 3"), bty = "n")
    plot(datetime, Global_reactive_power, ylab = "Global Reactive Power", type = "l")
})