# --------------------------
# Practicing Built-in Functions
# --------------------------

# 1. Calculate basic descriptive statistics (mean, median, mode) for a numeric vector
# Descriptive statistics help summarize the central tendency and distribution of data.
numeric_vector <- c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100)

mean_value <- mean(numeric_vector) # Mean: Average of all values

median_value <- median(numeric_vector) # Median: Middle value when sorted

mode_value <- as.numeric(names(sort(table(numeric_vector), decreasing = TRUE)[1])) # Mode: Most frequent value

cat("Mean:", mean_value, "\n")

cat("Median:", median_value, "\n")

cat("Mode:", mode_value, "\n")


# 2. Generate a sequence of numbers from 1 to 100 and find the sum of all even numbers
# Sequences are useful for generating data or iterating through numbers.
sequence <- 1:100

even_numbers <- sequence[sequence %% 2 == 0] # Filter even numbers using modulo operator

sum_even <- sum(even_numbers) # Sum all even numbers

cat("Sum of even numbers from 1 to 100:", sum_even, "\n")

# 3. Use the `paste()` function to concatenate multiple strings with a separator
# The `paste()` function is great for combining strings.
string1 <- "Hello"

string2 <- "World"

result <- paste(string1, string2, sep = " - ") # Combine strings with a separator

cat("Concatenated string:", result, "\n")

# 4. Create a matrix and perform operations (transposition, determinant, inversion)
# Matrices are fundamental for linear algebra operations.
matrix_data <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2) # Create a 2x2 matrix
transposed_matrix <- t(matrix_data) # Transpose the matrix

determinant_value <- det(matrix_data) # Calculate the determinant

inverse_matrix <- solve(matrix_data) # Find the inverse of the matrix


cat("Original Matrix:\n")

print(matrix_data)

cat("Transposed Matrix:\n")

print(transposed_matrix)

cat("Determinant:", determinant_value, "\n")

cat("Inverse Matrix:\n")

print(inverse_matrix)


# --------------------------
# Working with Library Packages
# --------------------------

# 1. Install and load the `ggplot2` library. Create a basic scatterplot
# `ggplot2` is a powerful package for creating visualizations.
install.packages("ggplot2")

library(ggplot2)

data("mtcars") # Load the mtcars dataset

# Create a scatterplot of car weight (wt) vs miles per gallon (mpg)

ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point() + labs(title = "Scatterplot of Weight vs MPG")


# 2. Use the `dplyr` package to filter rows in the `iris` dataset for a specific species and arrange them by sepal length
# `dplyr` is a popular package for data manipulation.
install.packages("dplyr")

library(dplyr)
# Filter rows for the "setosa" species and arrange by Sepal.Length
filtered_iris <- iris %>% filter(Species == "setosa") %>% arrange(Sepal.Length)
head(filtered_iris) # Display the first few rows of the filtered data

# 3. Install the `tidyr` package and demonstrate pivoting a dataset from wide to long format and vice versa
# `tidyr` is useful for reshaping data.
install.packages("tidyr")

library(tidyr)

# Create a sample wide-format dataset

wide_data <- data.frame(

  ID = 1:3,
  
  Measurement1 = c(10, 20, 30),
  
  Measurement2 = c(15, 25, 35)
  
)

# Convert wide format to long format
long_data <- pivot_longer(wide_data, cols = starts_with("Measurement"), names_to = "Measurement", values_to = "Value")

cat("Wide to Long Format:\n")

print(long_data)


# Convert long format back to wide format
wide_data_again <- pivot_wider(long_data, names_from = "Measurement", values_from = "Value")

cat("Long to Wide Format:\n")

print(wide_data_again)


# 4. Explore the `data.table` package by creating a data table and performing simple aggregation tasks
# `data.table` is an efficient package for handling large datasets.
install.packages("data.table")

library(data.table)

# Create a data table

dt <- data.table(ID = 1:5, Value = c(10, 20, 30, 40, 50))

# Perform aggregation (mean and sum of the "Value" column)

aggregated_dt <- dt[, .(Mean = mean(Value), Sum = sum(Value))]

cat("Aggregated Data Table:\n")

print(aggregated_dt)


# --------------------------
# Advanced Tasks
# --------------------------

# 1. Use the `lubridate` package to parse and format dates
# `lubridate` simplifies working with dates and times.
install.packages("lubridate")

library(lubridate)

date_string <- "2023-10-15"

parsed_date <- ymd(date_string) # Parse the date string

formatted_date <- format(parsed_date, "%B %d, %Y") # Format the date

cat("Parsed and Formatted Date:", formatted_date, "\n")

# 2. Scrape data from a webpage using the `rvest` package
# `rvest` is a package for web scraping in R.
install.packages("rvest")

library(rvest)

url <- "https://en.wikipedia.org/wiki/List_of_countries_by_GDP_(nominal)"

webpage <- read_html(url) # Read the webpage

tables <- webpage %>% html_table(fill = TRUE) # Extract all tables

gdp_table <- tables[[3]] # Select the third table (adjust index as needed)

head(gdp_table) # Display the first few rows of the table

# 3. Explore the `caret` package by creating a simple machine learning model for classification
# `caret` is a comprehensive package for machine learning.
install.packages("caret")

library(caret)

data("iris") # Load the iris dataset

set.seed(123) # Set seed for reproducibility

# Split the data into training and testing sets

train_index <- createDataPartition(iris$Species, p = 0.8, list = FALSE)

train_data <- iris[train_index, ]

test_data <- iris[-train_index, ]

# Train a Random Forest model
model <- train(Species ~ ., data = train_data, method = "rf")

# Make predictions on the test set

predictions <- predict(model, test_data)

# Evaluate the model
confusionMatrix(predictions, test_data$Species)

# 4. Visualize time-series data using the `xts` and `zoo` packages
# `xts` and `zoo` are packages for handling time-series data.
install.packages("xts")

install.packages("zoo")

library(xts)

library(zoo)

# Create a sequence of dates
dates <- seq(as.Date("2023-01-01"), as.Date("2023-12-31"), by = "day")

# Generate random values for the time series
values <- rnorm(length(dates))

# Create an xts object

ts_data <- xts(values, order.by = dates)

# Plot the time series

plot(ts_data, main = "Time Series Data")


# --------------------------
# Bonus Tasks
# --------------------------

# 1. Create an R Markdown document and knit it into an HTML or PDF report

# R Markdown is a tool for creating reproducible reports.
# Save this script as an .Rmd file and use the "Knit" button in RStudio to generate a report.

# 2. Use the `plotly` package to create an interactive plot
# `plotly` adds interactivity to visualizations.
install.packages("plotly")

library(plotly)

# Create a ggplot and convert it to an interactive plot

p <- ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point()

ggplotly(p)

# 3. Debug a simple R script with syntax errors or logical errors
# Debugging is an essential skill for identifying and fixing issues in code.
# Example of debugging:
# Original code with error:

# x <- 10

# y <- "20"

# z <- x + y  # Error: non-numeric argument to binary operator

# Debugged code:

x <- 10

y <- 20

z <- x + y

cat("Debugged Result:", z, "\n")


# --------------------------
# End of Script
# --------------------------
