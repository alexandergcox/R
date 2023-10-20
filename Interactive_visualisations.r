# Interactive visualisations in R

###############################################################################

# This R script shows how to create interactive visualisations in R. 

#
#  - how to build a simple linear regression model in R
#  - how to perform log transformation on variables to improve model fit
#  - how to test the efficiency of regression models and make predictions.

###############################################################################

# 1. Prepare your workstation


# Import the libraries.
library(plotly)
library(tidyverse)


# Import the built-in motor cars data set.
# Assign a data frame name to the data set (mtcars).
cars <- mtcars


# View the object (data) type.
typeof(cars)


###############################################################################

# 2. Explore the data

# Convert the data set to a data frame.
cars_df <- as.data.frame(cars)


# Sense-check the data viewing the top six rows.
head(cars_df)


###############################################################################

# 3. Create interactive visualisations

# 3a) Weight (wt) and miles per gallon (mpg)

# Use plotly to create a plot with one variable.
# Note the spelling of the function (plot_ly).
# Specify the data frame and the x variable.
plot_ly(cars_df,
        x = ~wt)


###########


# 3b) Add a y-variable to the plot

# Add another variable (y) and select a plot type - barplot.
plot_ly(cars_df,
        x = ~wt,
        y = ~mpg,
        type = 'bar')



# What if we don't specify the plot type?
# With two variables, allow plotly to select the chart type.
plot_ly(cars_df,
        x = ~wt,
        y = ~mpg)


##########

# 3c) Add a third variable to the plot

# Add a third variable as colour to the scatterplot - cylinder (cyl).
# Specify the mode as markers and color as cyl.
plot_ly(cars_df,
        x = ~wt,
        y = ~mpg,
        type = 'scatter',
        mode = 'markers',
        color = ~cyl)



# Convert the cylinder variables to categorical values (factors).
plot_ly(cars_df,
        x = ~wt,
        y = ~mpg,
        type = 'scatter',
        mode = 'markers',
        color = ~factor(cyl))


###############################################################################

# 4. Advanced features

# 4a) Colour blindness

# Add symbols to the plot for clear distinction.
plot_ly(cars_df,
        x = ~wt,
        y = ~mpg,
        type = 'scatter',
        mode = 'markers',
        color = ~factor(cyl),
        symbol = ~cyl,
        symbols = c('circle', 'x', 'o'))



# Increase  the symbol size and transparency.
plot_ly(cars_df,
        x = ~wt,
        y = ~mpg,
        type = 'scatter',
        mode = 'markers',
        color = ~factor(cyl),
        symbol = ~cyl,
        symbols = c('circle', 'x', 'o'),
        size = 2,
        alpha = 1)


###########

# 4b) 3D plots

# Create a 3D plot with an x, y, and z-axis.
plot_ly(cars_df,
        x = ~wt,
        y = ~mpg,
        z = ~cyl,
        color = ~factor(gear))


##########

# 4c) Create an animated scatterplot

# Create an animated scatter plot using cylinder in the frame parameter.
plot_ly(cars_df,
        x = ~wt,
        y = ~mpg,
        type = 'scatter',
        mode = 'markers',
        frame = ~cyl,
        showlegend = FALSE)



# Assign the animated plot to the object viz.
viz <- plot_ly(cars_df,
               x = ~wt,
               y = ~mpg,
               type = 'scatter',
               mode = 'markers',
               frame = ~cyl,
               showlegend = FALSE)


#########

# 4d) Edit animation features

# Edit and alter animation features, such as the button,
# slider, and transitions.
  viz %>%
  animation_button(x =1 , xanchor = 'right',
                   y = 1, yanchor = 'bottom')%>% 
  animation_slider(currentvalue = list(prefix = 'Cylinders',
                                       font = list(color = 'blue'))) %>% 
  animation_opts(frame = 10000,
                 easing = 'circle-in')


###############################################################################

# 5. Save your R script.


###############################################################################
  
