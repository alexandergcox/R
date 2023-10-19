# Data manipulation in R

###############################################################################

# Ryan has been tasked with performing data wrangling to help launch I4U’s new
# car insurance policy. Ryan's manager (Callan Lee) has asked him to continue 
# the data wrangling part of the project on a new data set. Ryan has to explore
# the historic seatbelt data set and perform data manipulation if needed. As 
# an intern at I4U, you need to gain valuable work experience. Fortunately, 
# Ryan has offered to guide you. He wants you to follow the same data analysis
# process as he did to validate his answers.

# During your morning team meeting, Ryan asks you to complete the following:
# - Import the CSV file into RStudio.
# - Explore and sense-check the data set.
# - Create a data profile report with the DataExplorer() function.
# - Perform data manipulation.
# - Present a suitable visualisation of the data set.

###############################################################################

# 1. Prepare your workstation.

# Import libraries - this might take a minute or so.
# The whole tidyverse package.
library(tidyverse)
# Create insightful summaries of the data set.
library(skimr)
# Create insightful reports on the data set.
library(DataExplorer)

# Set your working directory.
# Import the data set (seatbelt.csv).
seatbelt <- read.csv('seatbelt.csv', header=T)
seatbelt <- read.csv(file.choose(), header=T)


# Sense-check  the data set.
as_tibble(seatbelt)

View(seatbelt)


##############################################################################

# 2. Explore the data set.

# Determine the sum of missing values (data frame and seatbelt column). 
sum(is.na(seatbelt))

sum(is.na(seatbelt$seatbelt))


# Replace NA with 0.
seatbelt[is.na(seatbelt)] = 0

# View the result.
head(seatbelt)

sum(is.na(seatbelt$seatbelt))


# Determine the descriptive statistics.
summary(seatbelt)


# Create a data profile report.
DataExplorer::create_report(seatbelt)


###############################################################################

# 3. Manipulate (data wrangling) the data set.

# Drop unnecessary columns (e.g. column X).
seatbelt_df <- subset(seatbelt, select=-c(1))


# Create a subset of the data frame with only numeric columns.
seatbelt1 <- seatbelt_df %>% keep(is.numeric)


# View the result.
head(seatbelt1)


# Round all the columns to 2 decimal places.
seatbelt1 <- round(seatbelt1, 2)


# View the result.
head(seatbelt1)


##############################################################################

# 4. Visualise data set.

# visualise data with boxplot to determine normal 
# distribution of separate columns.
boxplot(seatbelt1$miles)

boxplot(seatbelt1$fatalities)

boxplot(seatbelt1$income)

boxplot(seatbelt1$age)

boxplot(seatbelt1$seatbelt)


###############################################################################

# 5. Perform data manipulation.

# Calculate the sum of all the columns.
aseatbelt1 <- apply(seatbelt1, 2, sum)

aseatbelt1 <- round(aseatbelt1, 2)


# View the results.
head(aseatbelt1)
# It only make sense to use the sum for columns fatalities and income.


# Calculate the min of all the columns.
sseatbelt1 <- sapply(seatbelt1, min)

sseatbelt1 <- round(sseatbelt1, 2)


# View the results.
sseatbelt1
# We can use all the columns to draw conclusions.


# Calculate the max of all the columns.
bseatbelt1 <- sapply(seatbelt1, max)

bseatbelt1 <- round(bseatbelt1, 2)


# View the results.
bseatbelt1
# We can use all the columns to draw conclusions.


##########################################################################

# Advanced exercise:

# Focus on specific variables with select() function.
seatbelt_agg <- select(seatbelt, c('state',
                                   'year',
                                   'miles'))

# View the result.
as_tibble(seatbelt_agg)



# Focus on specific variables with the select() function.
seatbelt_agg2 <- select(seatbelt, c('drinkage',
                                    'year',
                                    'miles'))

# View the result.
as_tibble(seatbelt_agg2)


# Can you think of other columns to compare?


###############################################################################

# 6. Save your R script

##############################################################################
