source("Getting_and_processing_script.R")
with(feb1and2, 
     plot(datetime, Global_active_power, 
          ylab = "Global Active Power (kilowatts)", type = "l"
     )
)
