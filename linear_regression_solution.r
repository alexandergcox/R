# Build a predictive model in R

###############################################################################


# We’ve looked at two methods of using R in predictive analytics – time-series
# analysis and linear regression. Both of these use existing or past data to
# help make predictions, among other things, on how a variable may behave in 
# the future. This practical activity will focus on linear regression, with the 
# purpose being to familiarise yourself with creating a regression model in R 
# using RStudio.

# As a freelance data analyst, a client has asked you to investigate the 
# relationship between the value of Ethereum cryptocurrency and the S&P 500 
# (the Standard & Poor’s 500 – a stock market index of the 500 largest 
# companies listed on stock exchanges in the US). Your client has provided you
# with a data set that contains a variety of Ethereum and S&P 500 values from 
# November 2017 to August 2022. Values for both S&P 500 and Ethereum in the 
# data set include:
# - opening values (Open_Eth, Open_sp)
# - highest daily value (High_Eth, High_sp)
# - lowest daily value (Low_Eth, Low_sp)
# - closing values (Close_Eth, Close_sp)
# - adjusted closing values (Adj.Close_Eth, Adj.Close_sp)
# - volume (Volume_Eth, Volume_sp).

# Investigate the correlation between Ethereum and S&P 500 values through a 
# predictive model that most accurately predicts daily adjusted closing 
# Ethereum values. In other words, your client wishes to know whether they 
# can use S&P 500 values to predict Ethereum values.

###############################################################################

# 1. Prepare your workstation

# Import the tidyverse package.
library(tidyverse)


# Import the data set (es.csv). 
stock <- read.csv('es.csv', header=TRUE)
stock <- read.csv(file.choose(), header=T)


# Sense check using the summary() function.
head(stock)
summary(stock)


###############################################################################

# 2. Explore the data set


# Visualise data to understand data set.
plot(stock$Open_sp, stock$Adj.Close_Eth)


# Transform the data set to limit errors.
# Improve linearity of data set and increase R^2.
SqrtClose_Eth <- sqrt(stock$Adj.Close_Eth)


# Visualise the result of transformed data.
plot(stock$Open_sp, SqrtClose_Eth)


################################################################################

# 3. Compare two predictive models

# 3a) Test the relationship between Adj.Closed_Eth and Open_sp

# Create a linear regression model.
model1 <- lm(stock$Adj.Close_Eth ~ stock$Open_sp)


# View the summary stats.
summary(model1)


# Create a visualisation to determine normality of data set.
qqnorm(residuals(model1))
qqline(residuals(model1), col='red')


###############################################################################

# 3b) Test the relationship between the transformed Adj.Close_Eth and Open_sp

# Create a linear regression model.
model2 <- lm(SqrtClose_Eth ~ stock$Open_sp)


# View the summary stats.
summary(model2)


# Create a visualisation to determine normality of data set.
qqnorm(residuals(model2))
qqline(residuals(model2), col='blue')


###############################################################################

# 4. Compare the two models

# Arrange plot with the par(mfrow) function.
par(mfrow=c(2, 1))


# Compare both graphs (model1 and model2).
plot(stock$Open_sp, stock$Adj.Close_Eth)
abline(coefficients(model1), col='red')

plot(stock$Open_sp, SqrtClose_Eth)
abline(coefficients(model2), col='blue') 

# Compare the p values and R^2 values?
# What do you see?
# Model2 is slightly better than model1.


###############################################################################

# 5. Save your R script

###############################################################################

