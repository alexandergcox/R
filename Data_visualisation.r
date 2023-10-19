# Creating plots with ggplot2

###############################################################################

# This R script shows how to produce 
# high-quality visualisations in R. This code show
#  - the difference between qplot and ggplot
#  - how to apply the grammar of graphics.

###############################################################################

# 1. Prepare your workstation

# Install the ggplot2 package.
# install.packages('ggplot2')

# Import the ggplot2 library.
library(ggplot2)


# Import the data set (wages_plots.csv)
# Set your working directory.
wages <- read.csv('wages_plots.csv', header=TRUE)
wages <- read.csv(file.choose(), header=T)


# View top 6 rows.
head(wages)


###############################################################################

# 2. Using qplot (quick plot) for visualisation

# Examine a variable (wages) through a visualisation.
qplot(wage, data=wages)


# Examine a variable (marital) through a visualisation.
qplot(marital, data=wages)


# Examine two variables (age and wage) through a visualisation.
qplot(age, wage, data=wages)

###############################################################################

# 3. Using ggplot for visualisation


# 3a) Histogram
# Start with a simple histogram.
ggplot(wages, aes(x=wage)) + 
  geom_histogram()


# Histogram with 20 bins.
ggplot(wages, aes(x=wage)) + 
  geom_histogram(bins = 20)


#####

# 3b) Densityplot
# Smoothed density plot.
ggplot(wages, aes(x=wage)) + 
  geom_density()


####

# 3c) Scatterplot
# Start with a simple scatterplot.
ggplot(wages, aes(x=age, y=wage)) + 
  geom_point()


# Scatterplot with jitter.
ggplot(wages, aes(x=jitter(age), y=wage)) + 
  geom_point()


## Scatterplot with a line-of-best-fit from linear regression model.
ggplot(wages, aes(x=age, y=wage)) + 
  geom_point() + 
  geom_smooth(method=lm)


# Scatterplot with no method in geom_smooth() (spline).
ggplot(wages, aes(x=age, y=wage)) + 
  geom_point() + 
  geom_smooth()


# Add a further/third variable as a colour and remove the smoothing line.
ggplot(wages, aes(x=age, y=wage, color=job_class)) + 
  geom_point()


# Add a further/third variable as a colour with a smoothing line (spline).
ggplot(wages, aes(x=age, y=wage, col=job_class)) + 
  geom_point() + 
  geom_smooth()


# Add a further/third variable and no standard error.
ggplot(wages, aes(x=age, y=wage, col=job_class)) + 
  geom_point() + 
  geom_smooth(se=FALSE)


# Add a further/third variable and no points.
ggplot(wages, aes(x=age, y=wage, col=job_class)) + 
  geom_smooth()


####

# 3d) Barplots
# Categorical variable = marital.
ggplot(wages, aes(x=marital)) + 
  geom_bar()


# Comparing marital and education with colour (outline only).
ggplot(wages, aes(x=marital, col=education)) + 
  geom_bar()


# Comparing marital and education with colour (fill).
ggplot(wages, aes(x=marital, fill=education)) + 
  geom_bar()


# Comparing marital and education with colour (fill and side-by-side).
ggplot(wages, aes(x=marital, fill=education)) + 
  geom_bar(position='dodge')


# Comparing marital with education and add a title.
ggplot(wages, aes(x=marital, fill=education)) + 
  geom_bar(position='dodge') +
  ggtitle("Customer education level by marital status")


# Comparing age with wage and add a theme (minimal).
ggplot(wages, aes(x=age, y=wage, col=job_class)) + 
  geom_point() + geom_smooth() +
  theme_minimal()


# Comparing age awith wage and add a theme (classic).
ggplot(wages, aes(x=age, y=wage, col=job_class)) + 
  geom_point() + geom_smooth() +
  theme_classic()


# Comparing age with wage and change the line width.
ggplot(wages, aes(x=age, y=wage, col=job_class)) + 
  geom_point() + 
  geom_smooth(lwd=2, se=FALSE) +
  theme_classic()


# Age, wages, and education with smoothing lines only.
ggplot(wages, aes(x=age, y=wage, col=education)) + 
  geom_smooth(se=FALSE)


###############################################################################

# 4. Save your R script


##############################################################################
