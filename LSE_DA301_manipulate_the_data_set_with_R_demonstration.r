# LSE Data Analytics Online Career Accelerator

# DA301: Advanced Analytics for Organisational Impact

# Demonstration video: Data manipulation with R

###############################################################################

# This R script accompanies the demonstration video on how to manipulate a data 
# set with R. In this demonstration, you will explore a step-by-step breakdown 
# of how to manipulate the travel mode data set, as performed by Ryan. 
# Follow along for a coherent learning experience. 

# In this video, you'll learn:
#  - how to perform data manipulation with tidyverse packages
#  - how to address questions while performing data manipulation. 

###############################################################################

# 1. Prepare your workstation.

# Install the necessary packages.
# If you have installed it previously, you can ignore this step.
# install.packages('tidyverse')

# Import the library.
library(tidyverse)


# Set your working directory.
# Import the data set (travelmode.csv).
travelmode <- read.csv('travelmode.csv', header=TRUE)
travelmode <- read.csv(file.choose(), header=TRUE)


# Review/sense-check the data set.
as_tibble (travelmode)


###############################################################################

# 2. Manipulate the data set.

# Delete columns X and gender.
travelmode <- subset(travelmode,
                     select = -c(X, gender))


# View the column names.
names(travelmode)


# Change the names of the columns.
travelmode <- travelmode %>%
  rename(waiting_time = wait, 
         vehicle_cost = vcost, 
         travel_time = travel, 
         general_cost = gcost, 
         family_size = size)


# View the restult.
head(travelmode)


###############################################################################

# 3. Explore the given tasks.

# 3a) Calculate the total costs for car clients only, 
#      and add these values to the initial data set.

# Find total costs for car clients only in the data frame.
car_costs <- subset(travelmode,
                    mode=='car')


# Add a column with total costs.
car_costs <- car_costs %>%
  mutate(total_cost = vehicle_cost + general_cost) 


# View the result.
head(car_costs)


# Add total_cost column to the travelmode data frame.
joined_travelmode <- left_join(travelmode,
                               car_costs)

# View the result.
head(joined_travelmode)


# Confirm number of rows.
dim(joined_travelmode)


################

# 3b) Create data frames for each travel mode for members with families.

# Subset using the filter() and select() functions from the dplyr package.
# Travelling by air.
# Create new a data frame as travelmode_air.
air_family <- select(filter(travelmode,
                            mode=='air',
                            family_size>='2'), 
                     c(individual,
                       choice:family_size))


## Alternative code snippet.
# Create new a data frame as travelmode_air.
# air_family <- select(filter(travelmode,
#                             mode=='air',
#                             family_size>='2'), 
#                      individual,
#                      choice:family_size))


# View the result.
head(air_family)



# Travelling by train.
train_family <- select(filter(travelmode,
                              mode=='train',
                              family_size>='2'), 
                       c(individual,
                         choice:family_size))


# View the result.
head(train_family)



# Travelling by bus.
bus_family <- select(filter(travelmode,
                            mode=='bus',
                            family_size>='2'),
                     c(individual,
                       choice:family_size))


# View the result.
head(bus_family)



# Travelling by car.
car_family <- select(filter(travelmode,
                            mode=='car',
                            family_size>='2'), 
                     c(individual,
                       choice:family_size))


# View the result.
head(car_family)


################

# 3c) Find the preferred travel mode for families.

# Find preferred modes of travel.
air_family %>% 
  count(choice)


train_family %>% 
  count(choice)


bus_family %>% 
  count(choice)


car_family %>% 
  count(choice)


################

# 3d) Calculate the average vehicle cost and general costs for members with
#     families.

# Average vehicle cost and general for family's in cars, trains, and buses.
# For cars:
mean_car_costs <- summarise(car_family,
                            mean_VC=mean(vehicle_cost),
                            mean_GC = mean(general_cost))


# View the result.
mean_car_costs



# For bus:
mean_bus_costs <- summarise(bus_family,
                            mean_VC=mean(vehicle_cost),
                            mean_GC = mean(general_cost))


# View the result.
mean_bus_costs



# For train:
mean_train_costs <- summarise(train_family,
                              mean_VC=mean(vehicle_cost),
                              mean_GC = mean(general_cost))


# View the result.
mean_train_costs


################

# 3e) Create a data frame that contains this data for land-based travel modes, 
#      arranged by mean general costs.

# Create a data frame to hold these values.
mean_land_costs <- rbind(mean_car_costs,
                         mean_bus_costs,
                         mean_train_costs)


# View the result.
mean_land_costs



# Add a column containing the vehicle type.
vehicle <- c('car', 'bus', 'train')


# Add the column names to the data frame.
mean_costs <- cbind(vehicle,
                    mean_land_costs)


# View the result.
mean_costs


# Set in descending order from the highest mean general cost down.
arrange(mean_costs, desc(mean_GC))


###############################################################################

# 4. Save your R script.

###############################################################################
