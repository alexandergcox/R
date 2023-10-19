# Importing and exporting data in R

###############################################################################

# Data sets often come in file types like CSV and TXT, and being able to 
# correctly load these data sets into workspaces allows them to be cleaned and
# analysed. In this activity, you will practise loading a data set into R and 
# then exporting it into your working directory to be cleaned and analysed at a
# later time. 

# Andi is a data analyst hired by a used-car conglomerate. One of their tasks is
# to analyse data on motorbike sales at a second-hand vehicle outlet. To begin
# analysing a data set, it has to be loaded into the tool used for the analysis.
# So, before Andi can start to analyse the data, it needs to be loaded into 
# RStudio. They are busy with some other tasks and asks for your help to load
# the data. 

# In this activity, you will import the bike_details.csv (Birla & Verma 2020)
# file into R. This file was included in the zip file you downloaded at the
# beginning of the week from the 4.0 Focus of the Week page.

###############################################################################

# 1. Prepare your workstation.

# Determine your working directory
getwd()


# Change your current directory.
setwd(dir='C:/Users/alexc_dra7fx5/OneDrive/Desktop/LSE/R/Data')


###############################################################################

# 2. Import the data set.


# [Optional]
# Install the tidyverse library.
# install.packages('tidyverse')


# Import the tidyverse library.
library(tidyverse)


# Import a CSV file.
data <- read.csv('bike_details.csv', header=T)


# Print the data frame.
data
View(data)


# alternative method
# data2 <- read.table(file.choose(), header = TRUE, sep=',')
# data2


# Sense-check the data set
# Return the structure of the data frame.
str(data)


# Check the type of the data frame.
typeof(data)


# Check the class of the data frame.
class(data)


# Check the dimensions of the data frame
dim(data)


###############################################################################

# 3. Export the data set.

# Export the data as a CSV file.
write_csv (data, file='bike_details.csv')


##############################################################################

# 4. Save the R script.


###############################################################################
