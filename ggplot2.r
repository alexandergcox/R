# Using ggplot2 to visualise data

###############################################################################

# Happy with your analysis of its clients' BMI values, I4U has asked that you
# continue analysing the data - this time focusing on visualisations and
# presenting analysis to stakeholders and managers.  

# You have to evaluate the relationship between client age and the client fees
# by incorporating the smoker, gender, region, and children variables to better
# explore and visualise the data.

###############################################################################

# 1. Prepare your workstation

# Import the necessary libraries.
library(tidyverse)

# Set your working directory.
# Import the insurance data set (insurance.csv).
health <- read.csv('insurance.csv', header=T)
health <- read.csv(file.choose(), header=TRUE)

# View the data frame.
head(health)
str(health)
summary(health)


###############################################################################

# 2. Create visualisations

# 2.a) Create a scatterplot
# Compare age (x-variable) and charges (y-variable).
ggplot(health,
       mapping=aes(x=age, y=charges)) +
  geom_point()


#####

# 2b) Remove the outliers

# Remove outliers (>50,000).
# Create a new data frame to store the data set.
# Create a new scatteplot.
new_health <- filter(health, charges<50000)

# View result.
ggplot(new_health,
       mapping=aes(x=age, y=charges)) +
  geom_point()


####

# 2c) Create three new scatterplots

## i - Compare age and charges based on sex.
# Change colours, adjust size and alpha of points.
ggplot(new_health,
       mapping=aes(x=age, y=charges)) +
  geom_point(color='purple',
             alpha=0.75,
             size=2.5) +
  # Add labels and change axes marks.
  scale_x_continuous(breaks=seq(0, 70, 5), "Age of the Individual") +
  scale_y_continuous(breaks=seq(0, 55000, 5000), "Monthly charges (in $)") +
  # Add a title and subtitle.
  labs(title="Relationship between age and charges",
       subtitle="A survey from a health insurance provider") +
  # Facet by sex.
  facet_wrap(~sex)


## ii - Compare age and charges based on region.
# Facet by region
ggplot(new_health,
       mapping=aes(x=age, y=charges)) +
  geom_point(color='blue',
             alpha=0.75,
             size=2.5) +
  scale_x_continuous(breaks=seq(0, 70, 5), "Age of the Individual") +
  scale_y_continuous(breaks=seq(0, 55000, 5000), "Monthly charges (in $)") +
  labs(title="Relationship between age and charges",
       subtitle="A survey from a health insurance provider") + 
  facet_wrap(~region)


## iii - Compare age and charges based on children.
# Facet by children
ggplot(new_health,
       mapping=aes(x=age, y=charges)) +
  geom_point(color='red',
             alpha=0.75,
             size=2.5) +
  scale_x_continuous(breaks=seq(0, 70, 5), "Age of the Individual") +
  scale_y_continuous(breaks=seq(0, 55000, 5000), "Monthly charges (in $)") +
  labs(title="Relationship between age and charges",
       subtitle="A survey from a health insurance provider") + 
  facet_wrap(~children)


####

# 2d) Add a third variable (smoker)

# Create a scatterplot to view result.
ggplot(new_health, 
       mapping=aes(x=age, y=charges, col=smoker)) +
  geom_point() +
  scale_x_continuous(breaks=seq(0, 70, 5), "Age of member") +
  scale_y_continuous(breaks=seq(0, 55000, 5000), "Monthly charges")


###############################################################################

# 3. Save your R script


###############################################################################
