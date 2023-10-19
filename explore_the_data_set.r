# Explore the data set with R

###############################################################################

# This R script shows how to
#  - review how to import a CSV file into RStudio and install libraries
#  - learn how to sense-check the data set with tidyverse package
#  - explore how to address questions while exploring the data set.

###############################################################################

# 1. Install the packages.

# Install the necessary packages.
# Installing the tidyverse package is optional as you've done this before.
# install.packages('tidyverse')
install.packages('skimr')
install.packages('DataExplorer') 

# Note that you only have to import the tidyverse package as it consists of
# ggplot2, tibble, tidyr, readr, purrr, dplyr, stringr, and forcats. 
# However, for demonstration purposes, readr, dplyr and tidyr will be imported
# separately.

# The whole tidyverse package.
library(tidyverse)
# Import and read CSV file.
library(readr)
# Data wrangling.
library(dplyr)
# Data wrangling.
library(tidyr)
# Create statistical summaries.
library(skimr)
# Create a report as an HTML file.
library(DataExplorer)

###############################################################################

# 2. Import the data set.

# Set your working directory.
# Read the CSV file (travelmode.csv).
travelmode <- read.csv('travelmode.csv', header=TRUE)
travelmode <- read.csv(file.choose(), header=TRUE)

# View the first six lines of the data frame.
head(travelmode)


# View the last six lines of the data frame.
tail(travelmode)


###############################################################################

# 3. View the data set.

# View the data set in a new window in RStudio as an Excel-style sheet.
View(travelmode)


# View the dimensions of the data set i.e. the number of rows and columns.
dim(travelmode)


# View the titles or names of the columns in the data set.
# There are two functions to return column names.
colnames(travelmode)
names(travelmode)


# Determine the structure of the data set.
# You can use three different functions.
str(travelmode)

glimpse(travelmode)

as_tibble(travelmode)


################################################################################

# 4. Explore the data set.

# To search for missing values in a data set.
travelmode[is.na(travelmode)]


# To search for missing values in a specific column of a data set.
is.na(travelmode$size)


# To search for missing values in a data set.
sum(is.na(travelmode))


# To search for missing values in a specific column of a data set.
sum(is.na(travelmode$size))


################################################################################

# 5. Descriptive statistics.

# These functions provide summary statistics of the data set.
summary(travelmode)

skim(travelmode)


# This function creates a downloadable HTML file containing summary stats of
# the data set.
DataExplorer::create_report(travelmode)


################################################################################

# 6. Save your R script.


################################################################################
