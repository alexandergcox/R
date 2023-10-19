Creating and querying a data frame

###############################################################################

# We have spent some time exploring the basic data types and structures of R. 
# First, we identified data types in R, including numeric, integer, character, 
# complex, logical, and raw. Second, we explored some of R's data structures, 
# starting with vectors and then moving to lists, matrices, and data frames. 
# In this practical activity, you will create your own lists and data frames
# in R, and then use functions on these data structures to help answer business
# questions.

# Your objective is to create a data frame in R containing the information that
# Miss Louw provided, and then use functions to extract data from the table.

###############################################################################

# 1. Open RStudio and create a new R script.

##############################################################################

# 2. Create a data frame containing the customer info from the raw data.

# Create a vector/list representing each column.
Name <- c('Donna', 'Anthea', 'Yusuf', 'Bongile',
          'Abe', 'Quentin', 'Tracy', 'Bilal',
          'Victoria', 'Indira')

Last_Name <- c('Watusi', 'Smits', 'Zayeed',
               'Maleson', 'Dawidowitz', 'Ng',
               'Jacks', 'Ghani', 'LeGrande',
               'De Silva')

Gender <- c('F', 'F', 'M', 'F', 'M', 'N',
            'F', 'M', 'F', 'F')

Age <- c(38, 29, 44, 24, 66, 34, 55, 40,
         38, 29)


Email <- c('donnaw@gotmail.co.uk', 'as@workmail.co.nz',
           'yusufzz@glammail.com', 'bongi1@workmail.co.uk',
           'papabe@oldmail.com', 'qng7@mailio.com',
           'tracy@blurredv.co.uk', 'bghani2@mailio.com',
           'beachh@glammail.com', 'indigirl@workmail.com')

Purchases <- c(24, 16, 28, 33, 21, 30, 28, 21, 22, 32)


# Combine vectors into a single data frame.
book_df <- data.frame(Name, Last_Name, Gender, Age,
                      Email, Purchases)


# Print data frame.
book_df
str(book_df)


###############################################################################

# 3. Check the data type of your data frame.

# Determine the typeof() of the data frame.
typeof(book_df)


# Determine the class() of the data frame.
class(book_df)


# Check the dimensions of the data frame.
dim(book_df)


###############################################################################

# 4. Change the column names to all caps.

# Specify the columns as names and the data frame.
names(book_df) <- c('NAME', 'LAST NAME', 'GENDER', 'AGE',
                    'EMAIL', 'PURCHASES')

# Print the data frame.
book_df


###############################################################################

# 5. Add a column to the data frame containing the customer IDs.

# Here an operator was used to create a sequence of numbers. 
ID <- c(2101:2110) 

# add the new column to the current data frame.
book_df$ID <- ID


# Print data frame.
book_df


# Return the structure of the data frame.
str(book_df)


###############################################################################

# 6. Subset the data frame.

# Extract only female customers.
subset(book_df, Gender == 'F')


# Extract all customers over the age of 50.
subset(book_df, AGE > 50)


# Extract all customers with less than 20 purchases in 2021.
subset(book_df, PURCHASES < 20)


###############################################################################

# 7. Save your R script.


##############################################################################
