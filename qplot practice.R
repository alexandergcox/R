# Install tidyverse.
install.packages('tidyverse')

# Import the tidyverse library.
library(tidyverse) 

# Determine your working directory
getwd()

# Change your current directory.
setwd(dir='C:/Users/alexc_dra7fx5/OneDrive/Desktop/LSE/R/Data')

# Import the data set (wages_plots.csv).
wages_plots <- read.csv('wages_plots.csv', header=TRUE) 

# View the data frame.
View(wages_plots) 
as_tibble(wages_plots)

# View a summary of the data frame.
summary(wages_plots)

# Specify X as age, y as wage, and wages_plots as the data source 
# (the x-axis variable is passed first, followed by the y-axis,
#  and then the source of the data is specified).
qplot(age, wage, data=wages_plots)

# Assign wage to the y variable, followed by the data source.
qplot(y=wage, data=wages_plots)

# First pass the x-variable, then specify the data source. 
qplot(age, data=wages_plots)

# Pass the x-variable, set the number of bins, and pass the data source. 
qplot(age, bins=5, data=wages_plots)

# Plot a bar chart by passing the x-variable and data source; then set the geom type.
qplot(age, data=wages_plots, geom='bar')

qplot(age, fill=education, data=wages_plots, geom='bar')

qplot(wage, race, data=wages_plots, geom='boxplot')

qplot(wage,race, data=wages_plots, colour=I('red'), geom='boxplot')

qplot(race, education, fill=wage, data=wages_plots, geom='raster')

qplot(age, wage, data=wages_plots, geom=c('point', 'smooth'))

qplot(age, wage, colour=education, data=wages_plots)

qplot(race, education, colour=wage, data=wages_plots)

qplot(race, education, colour=wage, data=wages_plots,
      geom=c('point', 'jitter'))
