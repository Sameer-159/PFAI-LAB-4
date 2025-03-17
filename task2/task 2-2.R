install.packages("dplyr")
library(dplyr)

iris_filtered <- iris %>%
  filter(Species == "setosa") %>%
  arrange(Sepal.Length)

head(iris_filtered)
