# LSE Data Analytics Online Career Accelerator
# DA301: Advanced Analytics for Organisational Impact

# Practical activity: Statistical analysis in R

###############################################################################
# This is the solution to the practical activity

# We've spent some time exploring statistics in R, from descriptive methods to
# inferential techniques. First, we explored measures of central tendency, then
# variability and normality. After that, we started exploring the data using
# inferential techniques, like t-tests and z-tests, and checking for correlation
# between variables. In this practical activity, you'll use both descriptive and
# inferential techniques in R to analyse a data set and address business
# questions.   

# You've been hired as a junior data analyst at Insurance-4-You's (I4U) health 
# insurance department. One of your first jobs is to analyse a data set of 
# insurance information for over 1,300 existing clients or policyholders.
# You've been provided with a CSV and TXT file containing metadata for each
# policyholder (Choi 2018).

# I4U wants to explore its clients' health using the BMI index as a marker. 
# As a junior data analyst, the company wants you to examine the correlation
# between the amounts it charges its clients and its clients' health, to 
# potentially rethink its billing system.

# Your objectives are twofold. Use statistical techniques to: 
# - Analyse the BMI of the primary holders, focusing on: 
#    - measures of central tendency
#    - measures of variability
#    - normality.
# - Investigate the correlation between BMI and the amount I4U charges each
#   customer, taking note of whether there is a correlation between these
#   variables, and what other variables I4U might use as a correlation with
#   charges. 

###############################################################################

# 1. Prepare your workstation

# Import the necessary libraries.
library(tidyverse)


# Set your working directory. 
# Import the insurance data set (insurance.csv).
health <- read.csv('insurance.csv', header=T)
health <- read.csv(file.choose(), header=T)


# View the data frame.
head(health)
str(health)


###############################################################################

# 2. Explore the data set

# Determine descriptive statistics of the data set.
summary(health)
summary(health$bmi)


# Measure central tendencies of BMI with mean and median.
mean(health$bmi)
median(health$bmi)


# Statistics of extreme values (max and min).
min (health$bmi)
max (health$bmi)


# Measure the variability of BMI values.
# Range = Maximum - Minimum.
max(health$bmi)- min(health$bmi)  


# Function to calculate Q1.
quantile(health$bmi, 0.25)  

# Function to calculate Q2.
quantile(health$bmi, 0.75)   

# Function to calculate IQR.
IQR(health$bmi)    


# Function to determine the variance.
var(health$bmi)


# Function to return the standard deviation.
sd(health$bmi) 


###############################################################################

# 3. Determine if data is normally distributed

# Measure normality in BMI values.
# Q-Q plot:
qqnorm(health$bmi)
# Add a reference line:
qqline(health$bmi, col='red')


# Shapiro-Wilk test:
shapiro.test((health$bmi))
# Our p-value is <0.05,so the data is not normally distributed.


# Check for skewness.
# First import the moments package and library.
library(moments)

# Now we can check for skewness.
skewness(health$bmi)
# Our output suggests a positive skewness.


#Check for kurtosis.
kurtosis(health$bmi)
# Our kurtosis value is less than 3, suggesting our data is platykurtic.


###############################################################################

# 4. Determine if there are any correlation(s)

# Check correlation between BMI and client age.
# Let's first check for normality in the client age values.
shapiro.test(health$age)
# Our output is less than 0.05, so the data is not normally distributed.

# Check correlation between BMI and age using Pearson's correlation.
cor(health$bmi, health$age)

# Our correlation coefficient of 0.11 suggests a weak positive correlation.


################################################################################

# 5. Save your R script

###############################################################################
