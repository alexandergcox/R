
# Install tidyverse.
install.packages('tidyverse')

# Import the tidyverse library.
library(tidyverse) 

# Determine your working directory
getwd()

# Change your current directory.
setwd(dir='C:/Users/alexc_dra7fx5/OneDrive/Desktop/LSE/R/Data')

# Import the data set (wages_plots.csv).
turtle_sales <- read.csv('turtle_sales.csv', header=TRUE) 

# View the data frame.
View(turtle_sales) 
as_tibble(turtle_sales)

# Remove redundant columns by creating a subset of the dataframe
sales = subset(turtle_sales, select = -c(Ranking, Year, Genre, Publisher))

# View the data frame.
View(sales) 
as_tibble(sales)

# View a summary of the data frame.
summary(sales)

# Determine the typeof() of the data frame.
typeof(sales)


# Determine the class() of the data frame.
class(sales)


# Check the dimensions of the data frame.
dim(sales)

# Create scatterplot
# Specify X as platform, y as global_sales, and sales as the data source 
qplot(Platform, Global_Sales, data=sales)

# Create Histogram
qplot(Platform, data=sales)

# Create boxplot
qplot(Platform, Global_Sales, data=sales, geom='boxplot')
