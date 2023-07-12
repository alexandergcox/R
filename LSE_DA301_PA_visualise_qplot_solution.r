# LSE Data Analytics Online Career Accelerator
# DA301: Advanced Analytics for Organisational Impact

# Practical activity: Creating and querying a data frame

###############################################################################
# This is the solution to the practical activity

# We have spent some time exploring the basic data types and structures of R. 
# First, we identified data types in R, including numeric, integer, character, 
# complex, logical, and raw. Second, we explored some of R's data structures, 
# starting with vectors and then moving to lists, matrices, and data frames. 
# In this practical activity, you will create your own lists and data frames
# in R, and then use functions on these data structures to help answer business
# questions.

# Your objective is to create a data frame in R containing the information that
# Tini provided, and then use functions to extract data from the table.

###############################################################################

# 1. Prepare your workstation.

# Import tidyverse library.
library(tidyverse)

# Import the wages data set (wages_plots.csv).
wages_plots <- read.csv(file.choose(), header=T)

# Print the data frame.
wages_plots

# View the data frame.
View(wages_plots)

# Summarise the data set.
summary(wages_plots)


##############################################################################

# 2. Do age, job class, and education level influence job class?

# View the first plot.
qplot(age,
      jobclass,
      colour=education,
      data=wages_plots)

# You could swap axes and add jitter to make this clearer.
# Jitter will add 'noise' to a numeric vector. You'll have more data points.
qplot(jobclass,
      age,
      colour=education, 
      data=wages_plots,
      geom=c('point', 'jitter'))


# Or you could switch variables around and use a boxplot.
qplot(education,
      age,
      colour=jobclass,
      data=wages_plots,
      geom='boxplot')


##############################################################################

# 3. Any relationship between age, education level, and race?

# View the second plot.
qplot(age,
      education,
      colour=race,
      data=wages_plots,
      geom='col')


# You could add jitter for more subtlety.
qplot(age,
      education,
      colour=race, 
      data=wages_plots,
      geom=c('point', 'jitter'))


###############################################################################

# 4. Any relationship between education level, wage, and race?


# View the third plot.
qplot(education,
      wage,
      shape=race,
      data=wages_plots,
      geom='boxplot')


# Here you could change variables around, making wage the x-axis and race the 
# y-axis, and change colour to fill.
qplot(wage,
      race,
      colour=education,
      data=wages_plots,
      geom='boxplot')


###############################################################################

# 5. Save your R script.


##############################################################################
