# convert the date to data form
all_month$started_at <- as.POSIXct(all_month$started_at, format = "%d/%m/%Y %H:%M:%S", tz = "UTC")
all_month$ended_at <- as.POSIXct(all_month$ended_at, format = "%d/%m/%Y %H:%M:%S", tz = "UTC")

# Calculate ride_length in seconds

all_month$ride_lenght_2 <- as.numeric(difftime(all_month$ended_at,all_month$started_at), units = "secs")

# Inspect the structure of the columns
str(all_month)

# Check if ride_length is numeric
is.numeric(all_month$ride_length_2)

# order the day of week
all_month$day_of_week <- ordered(all_month$day_of_week,
                                 levels=c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))
