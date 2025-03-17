install.packages("plotly")
library(plotly)
# Create a ggplot and convert it to an interactive plot
p <- ggplot(mtcars, aes(x = wt, y = mpg)) + geom_point()
ggplotly(p)
