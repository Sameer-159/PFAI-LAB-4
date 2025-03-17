install.packages("caret")
library(caret)

data(iris)

set.seed(123)  # For reproducibility
train_index <- createDataPartition(iris$Species, p = 0.8, list = FALSE)
train_data <- iris[train_index, ]
test_data <- iris[-train_index, ]

model <- train(Species ~ ., data = train_data, method = "rf")

print(model)

predictions <- predict(model, test_data)

conf_matrix <- confusionMatrix(predictions, test_data$Species)
print(conf_matrix)
