# Create four objects (one per column).
# Reference the number of books.
a <- c(101:104) 

# Name of books
b <- c('R_for_Data_Science', 'R_for_Dummies', 
       'The_philosophy_of_R', 'R_in_a_Nutshell')

# Books on loan
c <- c(TRUE, FALSE, FALSE, TRUE)

# Price of book
d <- c(11.5, 18, 22.8, 15)

# Create the data frame.
df <- data.frame(a, b, c, d)

# View the data frame.
df

# View the data types of the columns.
str(df)

# Customise the names of the columns.
names(df) <- c('ID', 'books', 'loan_status', 'price')

# View the data frame.
df

# Extract the element in the first row of the second column.
df[1, 2] 

# Extract the first and second row.
df[1:2, ] 

# Extract the columns headed ID and price.
df[, c('ID', 'price')]

# Place the $ operator between the data frame name and the column to extract.
df$ID

# Extract the elements in specific rows and columns.
df[1:2, 1:2]

# Subset data based on a criteria
subset(df, ID==101) 

# Create a new object called age.
age <- c(10, 35, 40, 5) 

# Add the new object to the data frame.
df$age <- age 

# Print the data frame.
df 

# Add a new row.
df[5,] <- c(105, 'R_in_practice',
            TRUE, 12.5, 7)

# Print the data frame.
df 
