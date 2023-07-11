print("Hello World")

# Assign 'a' the numeric value '10', using the 'assigned to' operator,
# Creating an object:
a <- 10


#Print the object 
a

number<-120
fish<-'goldfish'
distance<-12.25
shoes<-'4x'


print(number)
print(fish)
print(distance)
print(shoes)

# Check the class of the object ('a' has been assigned the number 10):
class(a)

# Check the type of object.
typeof(a)

# Check the length of an object,
length(a)

# Check object attributes,
attributes(a)

# Assign the object name
name<-'Andrew'

# Specify the typeof() function
typeof(name)

# Specify the length() function.
length(name)

# Create a vector, and assign it to the object x.
x<-c(1, 2, 3)

# Determine the attribute of x.
attributes(x)

# Create an object and a vector.
named.vec <- c('First'=1, 'Second'=2, 'Third'=3)

# Find the attributes of named.vec.
attributes(named.vec)

# Create a numeric vector.
c(1, 2, 3, 4, 5, 6, 7)

# Create a vector, specify the assign() function, and call the c() function.
assign('vector1', c(1, 2, 3, 4, 5, 6, 7))

# Print the vector
vector1

# Create vectors.
numbers <- c(1, 22, 33, 44)
city <- 'London'
sentence <- "How long is this sentence?"
unknown <-'4i+2'

# Determine length and attribute of each vector.
length(numbers)
attributes(numbers)

length(city)
attributes(city)

length(sentence)
attributes(sentence)

length(unknown)
attributes(unknown)

# Determine the vector type.
str(1, 5.5, 100) 

# Use the '/' operator to divide zero by zero.
0/0 

# Check the vector type of the object 1L.
str(1L)

# Assign to x the integers in the brackets.
x <- c(4L, 6L) 

# Check whether x is an integer.
is.integer(x) 

# Create the vector, and assign it to 'vec'.
vec <- c(FALSE, NA, TRUE, FALSE) 

# Return the elements of the object 'vec'.
vec 

# Create the vector, specify the c() function, and pass the characters.
# Assign the vector to object authors.
authors <- c('Andrew', 'Joy')  

# Check the vector type.
str(authors) 

# Specify/create a complex vector, and assign it to the object 'comp'.
comp <- c(2-4i, 1+3i-2, 55i) 

# Run the typeof() function on the object 'comp', and place it inside 
# the print() function so that the type in the output is returned.
print(typeof(comp)) 


# Recognise the assign operator, where the object x has been assigned the value 10.
x <- 10 

# Assign y the value 5.
y <- 5 

# Add the object x to y.
x + y 

x <- 10
y <- 5

x + y
x + y + 5

typeof(x)
typeof(y)


# Assign values to the object 'b'. 
b <- 10:15 

# Print out the value of b.
b 

# Look for the value of Index 1. 
b[1] 

# Look for the value of Index 5.
b[5] 

# Create a vector using the c() function, and assign it to the object x. 
x <- c(1, 2, 3, 4, 5)

# Create a vector using the c() function, and assign it to the object y. 
y <- c('yes', 'no') 

# Find the types of each vector.
str(x)
str(y)

# Coerce vector x to character.
as.character(x) 

# Coerce vector y to logical.
as.logical(y) 

# Create three vectors.
X1 <- c(TRUE, 'False')
X2 <- c(1.2, 99i)
X3 <- c('One', 1)

# Determine the type of each vector.
typeof(X1)
typeof(X2)
typeof(X3)

# Create an object list_data and a list using the list() function.
basket_apples  <-  list('Red', 'Green', 'Yellow') 

# Return the objects in the new list.
print(basket_apples) 

# Add an element 'White' to the 4th index in the list:
basket_apples[4] <- 'White' 

# Print the list.
print(basket_apples)

# Add an element with the append() function.
basket_apples <- append(basket_apples, 'Blue', after=2)

# Print the list.
print(basket_apples)

# Assign the third element in the index the value NULL.
basket_apples[3] <- NULL 

# Print the list.
print(basket_apples) 

# Assign the fourth element in the index to remove White.
basket_apples <- basket_apples[- 4] 

# Print the list.
print(basket_apples) 

# Replace the third element, Yellow with Pink.
basket_apples[3] <- 'Pink' 

# Print the list.
print(basket_apples) 

# Create a list with 5, 6, and 7. 
list1  <-  list(5, 6, 7) 

# Create a second list with Thu, Fri, and Sat.
list2  <-  list('Thu', 'Fri', 'Sat') 

# Append the lists together.
merged_list  <-  c(list1, list2) 

# Print the new list.
print(merged_list) 

# Create a list with numbers of the months. 
list3  <-  list(1, 2, 3, 4) 

# Create a second list with the names of the months.
list4  <-  list('January', 'February', 'March', 'April') 

# View the new list.
append(list3, list4) 

# Create a list named days_week.
days_week  <-  list('Sunday', 'Monday', 'Tuesday', 'Wednesday', 
                    'Thursday', 'Friday', 'Saturday')

# Call the element in the fifth index.
days_week[5] 

# We have already created the list (days_week).
# Call the element in the third index (double brackets).
days_week[[3]]

# Create a matrix, [2a] specify a sequence of numerals, 
# and define the number of rows and the number of columns.
B <- matrix(1:9, nrow=3, ncol=3) 

# View the matrix.
print(B)

# The matrix B has already been created.
# Transpose the data in the matrix B.
t(B) 

# Determine dimensions of the matrix B.
dim(B)

# Determine the attributes of the matrix B.
attributes(B)

# Create a matrix A. The matrix B has already been created.
A = matrix(1:6, nrow = 3, ncol = 2) 

# Combine matrices A and B.
cbind(A, B) 

# Create matrices C and D.
C = matrix(1:6, nrow = 2, ncol = 3) 
D = matrix(1:9, nrow = 3, ncol = 3) 

# Combine matrices C and D.
rbind(C, D) 

# Create a matrix with the numerals 1-9, 3 rows, 3 columns, and byrow = TRUE.
Z1 <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)

# Create a matrix with the numerals 1-9, 3 rows and 3 columns.
Z2 <- matrix(1:9, nrow = 3, ncol = 3)

# Print the matrix.
print(Z1) 
print(Z2)

# Extract the element in the second row and second column.
Z1 [2, 2] 

# Extract two columns from Z1, e.g. 1 and 3.
# (Indicate the first and third columns) for extraction.
Z1[, c(1, 3)] 

# Create/specify the rows and columns.
rownames(Z1) <- c('Top', 'Middle', 'Bottom') 
colnames(Z1) <- c('Left', 'Middle', 'Right') 

# Print the matrix Z1.
print(Z1) 
