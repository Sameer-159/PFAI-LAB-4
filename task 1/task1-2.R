numbers <- 1:100
even_numbers <- numbers[numbers %% 2 == 0]
sum_even_numbers <- sum(even_numbers)
cat("Sum of all even numbers from 1 to 100:", sum_even_numbers, "\n")
