install.packages("ggplot2")


library(ggplot2)

ggplot(mtcars, aes(x = mpg, y = hp)) + 
  geom_point() +
  ggtitle("Scatterplot of MPG vs Horsepower") +
  xlab("Miles Per Gallon (MPG)") +
  ylab("Horsepower (HP)")
