install.packages("lubridate")
library(lubridate)

date_str <- "2025-03-17"
parsed_date <- ymd(date_str)

formatted_date <- format(parsed_date, "%d-%m-%Y")

datetime_str <- "2025-03-17 12:45:30"
parsed_datetime <- ymd_hms(datetime_str)

formatted_datetime <- format(parsed_datetime, "%A, %B %d, %Y %I:%M:%S %p")

cat("Parsed Date:", parsed_date, "\n")
cat("Formatted Date:", formatted_date, "\n")
cat("Parsed Datetime:", parsed_datetime, "\n")
cat("Formatted Datetime:", formatted_datetime, "\n")
