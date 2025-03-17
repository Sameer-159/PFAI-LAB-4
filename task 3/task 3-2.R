install.packages("rvest")
library(rvest)
url <- "https://en.wikipedia.org/wiki/List_of_countries_by_GDP_(nominal)"
webpage <- read_html(url) # Read the webpage
tables <- webpage %>% html_table(fill = TRUE) # Extract all tables
gdp_table <- tables[[3]] # Select the third table (adjust index as needed)
head(gdp_table) 
