source("Getting_and_processing_script.R")
with(feb1and2, 
    hist(Global_active_power, 
        main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red"
    )
)