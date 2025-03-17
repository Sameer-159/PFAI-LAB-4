install.packages("xts")
install.packages("zoo")
library(xts)
library(zoo)

date_seq <- seq.Date(from = as.Date("2020-01-01"), by = "month", length.out = 12)
data_values <- rnorm(12, mean = 10, sd = 3)  # Random data

xts_data <- xts(data_values, order.by = date_seq)

plot(xts_data, main = "Time-Series Data (xts)", ylab = "Values", xlab = "Date", col = "blue")

zoo_data <- zoo(data_values, order.by = date_seq)

plot(zoo_data, main = "Time-Series Data (zoo)", ylab = "Values", xlab = "Date", col = "red")
