get_mode <- function(x) {
  uniq_x <- unique(x)
  uniq_x[which.max(tabulate(match(x, uniq_x)))]
}

vector <- c(5, 7, 7, 9, 10, 10, 10, 12, 15)

mean_val <- mean(vector)
median_val <- median(vector)
mode_val <- get_mode(vector)

cat("Mean:", mean_val, "\n")
cat("Median:", median_val, "\n")
cat("Mode:", mode_val, "\n")
