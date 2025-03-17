install.packages("tidyr")
library(tidyr)

wide_data <- data.frame(
  ID = 1:3,
  Math = c(90, 80, 85),
  Science = c(85, 75, 80),
  English = c(88, 82, 84)
)

long_data <- wide_data %>%
  pivot_longer(cols = c(Math, Science, English), 
               names_to = "Subject", 
               values_to = "Score")

wide_data_back <- long_data %>%
  pivot_wider(names_from = "Subject", values_from = "Score")

cat("Long format:\n")
print(long_data)
cat("\nWide format:\n")
print(wide_data_back)
