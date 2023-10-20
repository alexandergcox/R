# Simple linear regression in R

###############################################################################

#  - how to build a simple linear regression model in R
#  - how to perform log transformation on variables to improve model fit
#  - how to test the efficiency of regression models and make predictions.

###############################################################################

# 1. Prepare your workstation.

# Load the tidyverse library.
library(tidyverse)


# Set your working directory.
# Import the data set.
cpi <- read.csv('cpi.csv')
cpi <- read.csv(file.choose(), header=T)


## Explore the data set.
summary(cpi)
head(cpi)


###############################################################################

# 2. Clean the data.

# This data set has been cleaned.


###############################################################################

# 3. Identify relationships between the two variables - year and index.

# Find a correlation.
cor(cpi)


# Plot the relationship with base R graphics.
plot(cpi$Year, cpi$Index)


###############################################################################

# 4. Fit a simple linear regression model.

# Create a model with only one x variable.
model1 <- lm(Index~Year,
             data=cpi)


# View the model.
model1


# View more outputs for the model - the full regression table.
summary(model1)

# Year is a highly significant value, explaining over 83.53% of the variability.


###############################################################################

# 5. Plot the model.

# View residuals on a plot.
plot(model1$residuals)


# Plot the relationship with base R graphics.
plot(cpi$Year, cpi$Index)
coefficients(model1)


# Add line-of-best-fit.
abline(coefficients(model1))


###############################################################################

# 6. Create a log transformation.

# Complete a log transformation with dplyr's mutate() function.
cpi <- mutate(cpi, 
              logIndex=log(Index))


# View new object with new variable.
head(cpi)


# Create a new model using logIndex.
model2 <- lm(logIndex~Year,
             data=cpi)


# View full regression table.
summary(model2)


# Plot the relationship between year and logIndex.
plot(cpi$Year, cpi$logIndex)


# Add a line-of-best fit to existing plot.
abline(coefficients(model2))


###############################################################################

# 7. Make a forecast with this model.

# View the last six rows of the data set.
tail(cpi)


# Create a new data frame for the forecast values.
cpiForecast <- data.frame(Year=2022:2025)

# View the data
cpiForecast


# Predict from 2022 to 2025.
predict(model2,
        newdata=cpiForecast)


# Add the values to the cpiForecast data frame.
cpiForecast$logIndex <- predict(model2,
                                newdata=cpiForecast)


# Add the actual index as opposed to the log index by exponentiation.
cpiForecast <- mutate(cpiForecast,
                      Index=exp(logIndex))


# View the cpiForecast data frame.
cpiForecast


###############################################################################

# 8. Save your R script.


###############################################################################
