# LSE Data Analytics Online Career Accelerator

# DA301: Advanced Analytics for Organisational Impact

# Demonstration: Time series analysis in R

###############################################################################

# A confectionery wholesaler in the US, Sweets n Stuff, has warehouses across
# the country that it needs to keep stocked with its sweets and chocolates in
# preparation for seasonal variation in confectionery consumption. To help
# estimate stock and inventory for these warehouses, Sweets n Stuff has access
# to the national industrial production index. The industrial production index
# releases data about the production of sugar and confectionery products in the
# US. 

# Sweets n Stuff has approached you to help ensure it has adequate supply when
# demand may peak. It also wants to know when it should place future orders and
# when it should be aware of changes in demand to adjust its production and
# stock. 

# The demonstration explains how to perform time series analysis in R. 
# In this video, you’ll learn:
# - how to define a time series in R
# - how to ensure your data is in a format R can recognise
# - how to do some preliminary work.

###############################################################################

# 1. Prepare your workstation.

# Install necessary package.
# Generic function for forecasting.
install.packages('forecast')
# Time series analysis.
install.packages('tseries')


# Import the necessary libraries.
library(tidyverse)
library(forecast)
library(tseries)


# Set your working directory.
# Import data set (FRED.csv) and assign to new object.
FRED <- read.csv('FRED.csv', header = T)
FRED <- read.csv(file.choose(), header = T)


# Sense-check the new data set.
# The top six rows of the data frame.
head(FRED)


# The top 15 rows of the data frame.
head(FRED, 15)


# The bottom six rows of the data frame.
tail(FRED)


###############################################################################

# 2. Prepare the data.

# Specify the column, change the variables, and format the date.
# View the options available:
?strptime


# Based on the data, we will use the d/m/Y format.
FRED$DATE <- as.Date(FRED$DATE, format = '%d/%m/%Y')


# View the new data format.
head(FRED$DATE)


#######

# Change the names of columns by specifying the new column names.
colnames(FRED) <- c('date', 'index') 

# Return the top six rows.
head(FRED)


######

# Convert the data into a time series.
# Create a new data frame and assign time series value,
# and specify the 'ts' function.
FRED_ts <- ts(FRED$index,
              start = c(1972, 1),
              # Monthly frequency without missing values in data.
              frequency = 12)


# Sense-check the new object.
head(FRED_ts)  


###############################################################################

# 3. Visualise the data.


# Plot the time series.
plot(FRED_ts)


# View the data by creating a smaller sample of the visualisation.
plot(window(FRED_ts, 1972, 1974))


###############################################################################

# 4. Group the data by month.

# Specify the boxplot function and specific operands. 
boxplot(FRED_ts~cycle(FRED_ts))


# Add labels and titles.
boxplot(FRED_ts~cycle(FRED_ts),
        ylab = "index", 
        xlab = "month",
        main = "Confectionery production by month")


################################################################################

# 5. Decomposing the data.

# Extract and plot the main components to decompose the time series.
FRED_components <- decompose(FRED_ts)

# What is the object?
class(FRED_components)


# Determine the structure.
str(FRED_components)


# Visualise the decomposed time series.
plot(FRED_components) 


# Look at a single year (seasonal pattern) of the data.
plot(window(FRED_components$seasonal,
            c(1972, 1), c(1972, 12)))


# Plot the trend component.
plot(window(FRED_components$trend,
            c(2019, 1), c(2021, 12)))


###############################################################################

# 6. Save the R script.


##############################################################################