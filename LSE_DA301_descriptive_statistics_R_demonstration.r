# LSE Data Analytics Online Career Accelerator

# DA301: Advanced Analytics for Organisational Impact

# Demonstration video: Descriptive statistics using R

###############################################################################

# This R script accompanies the demonstration video on how to compute 
# descriptive statistics using R. In this video, you'll learn:
#  - how to compute descriptive statistics
#  - how to visualise the data
#  - how to determine normality of the data. 

###############################################################################

# 1. Prepare your workstation.

# Import the tidyverse package.
library(tidyverse)


# Set your working directory.
# Create a new object 'speedy 'and import the CSV (restaurant_sitdown.csv) file.
speedy <- read.csv('restaurant_sitdown.csv', header=T)
speedy <- read.csv(file.choose(), header=T)


# View the new object as a 'tibble'.
head(speedy)


###############################################################################

# 2. Compute descriptive statistics.

# Call the function to calculate the mean.
mean(speedy$total_minutes) 

# Call the function to calculate the median.
median(speedy$total_minutes)


# Determine the minimum and maximum value.
min(speedy$total_minutes)  
max(speedy$total_minutes) 


# Range = Max - Min.
max(speedy$total_minutes)- min(speedy$total_minutes) 


# Calculate Q1 and Q3.
quantile(speedy$total_minutes, 0.25)  
quantile(speedy$total_minutes, 0.75)


# Use the summary() function.
summary(speedy$total_minutes)


# Calculate IQR.
IQR(speedy$total_minutes)  
# OR:
50.09 - 28.76


# Determine the variance.
var(speedy$total_minutes)  


# Return the standard deviation.
sd(speedy$total_minutes)  


###############################################################################

# 3. Distribution of the data.

# Specify boxplot function.
boxplot(speedy$total_minutes)


# Specify histogram function.
hist(speedy$total_minutes)


###############################################################################

# 4. Determine normality of data.

# Specify qqnorm function (draw a qqplot).
qqnorm(speedy$total_minutes)

# Specify qqline function.
qqline(speedy$total_minutes) 



## Shapiro-Wilk test:
# Specify shapiro.test function (Shapiro-Wilk test).
shapiro.test(speedy$total_minutes)


## Skewness and Kurtosis
# Install the moments package and load the library.
install.packages('moments') 
library(moments)

# Specify the skewness and kurtosis functions.
skewness(speedy$total_minutes) 
kurtosis(speedy$total_minutes)


###############################################################################

# 5. Save your R script.


##############################################################################

