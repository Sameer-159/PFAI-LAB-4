install.packages("data.table")
library(data.table)

dt <- data.table(
  ID = c(1, 2, 3, 4, 5),
  Category = c("A", "B", "A", "B", "A"),
  Value = c(10, 20, 30, 40, 50)
)

agg_result <- dt[, .(Total = sum(Value)), by = Category]

mean_result <- dt[, .(Mean = mean(Value)), by = Category]

cat("Sum by Category:\n")
print(agg_result)
cat("\nMean by Category:\n")
print(mean_result)
