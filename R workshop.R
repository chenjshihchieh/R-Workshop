# Console automatically runs the code when you press enter
# Script requires you to press "Run" or ctrl + Enter on selected lines of code
# R takes objects and generate output(s)

# R Consists of objects and actions
# 2 main syntactical structure
## Object Action Object; (e.g., two plus two)
## Action(Object); (e.g., sqrt(25))

## Example: Taking numbers and applying numeric operators
# Notice the form Object Action Object

# Try a few calculations
# 2 + 4
# 8 + 12

# There are many arithmetic operators in R
# Addition
1 + 1

# Subtraction
2 - 1

# Multiplication
2 * 3

# Division
(3 + 3) / 2

# Exponentiation
2 ^ 3

# IMPORTANT: R does not save your work unless prompted to
x <- 2 #This allows you to assign 2 to a variable. You will use this often

# You can then call back those objects by typing in the variable
x

# Assign a value to my_apples


# Call back the variable, my_apples


# Assign a value to my_oranges


# Add the two variables together


# Create the variable, my_fruit, then call back the variable


###########################################################################
###########################################################################
# R works with many different data types, some basic types to know are:
# decimal values are called numerics
4.5

# Boolean values (TRUE, FALSE) are called logical
TRUE
FALSE

# Texts, or strings, values are called characters
"this is a string"

# Assign a number to a variable called a_numeric

# Assign a boolean value to a variable called a_logical

# Assign a text value to a variable called a_character

# You can check your work with the function class()
# Notice the form Action(Object)


# NOTE: these objects are also known as "Elements". They are the smallest form of objects in R


###########################################################################
###########################################################################
# Lets talk about a new object called vectors
# Vectors are one-dimensional arrays that that consists of multiple elements of a single data type
# c() allows us to combine elements to create vectors
numeric_vector <- c(1, 2, 3)
character_vector <- c("a", "b", "c")

# Try creating a boolean vector (TRUE, FALSE)


###########################################################################
###########################################################################
# Pie sales from Monday to Friday


# Cake sales from Monday to Friday


# Assign days as names of pie_vector, names()


# Assign days as names of cake_vector, names()


# Assign days to a variable to save time


# Let's find out how much you earn for each of these products
cake_total <-sum()
pie_total <-sum()

# What is your total earning for the week?
total_earnings <- 

# Which sells better, cake or pie? 


###########################################################################
###########################################################################
# Lets investigate whether the beginning of the working week is better than the end
# We can do this by extracting certain elements from a vector using []
total_earnings[1]
total_earnings[3]
total_earnings_monday <- total_earnings[1]
total_earnings_wednesday <- total_earnings[3]

# we can make this interesting
total_earnings[(3+3)/6]
total_earnings[2 + 1]

# Lets try analyzing our midweek sales for cakes
# using c() in the [], you can referece multiple elements in a vector
pie_midweek_sales <- pie_sales[c(2, 3, 4)]

# Lets try analyzing our midweek sales for pies
# c(2, 3, 4) can be abbreviated as 2:4
cake_midweek_sales <- cake_sales[2:4]

# select earnings for pies on Monday, Tuesday, and Wednesday
pie_start <- 

# lets calculate the average of the elements from pie_start

  
# select earnings for cakes on Monday, Tuesday, and Wednesday


###########################################################################
###########################################################################
# lets find the average sales of cakes


# On what days are the sales better than average? 
selection_vector <- 
  
# print out selection_vector


# Using these logicals, you can select the days where you sales are better than average\
# Do this by putting the selection_vector in the []


# Try doing this for the pie sales
# What is the average sales of pies?
  

# find the days when pie sales are above average and print out the values


###########################################################################
###########################################################################
# Lets look at the data frame, mtcars, that was built into R


# This is a lot of data to look at and may be better to look at smaller portion at a time
# You can do that using these functions
head()
tail()
str()

# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# I've defined the vectors
# Use them to create a data frame using data.frame
planets_df <-data.frame()

# Lets look at the structure of the data frame


# Like vectors, we can also call specific elements using []
# for example, if I want to print out the type of planet for earch (row 3, column 2)
planets_df[3, 2]

# I can also print out the entire row for earth (row 3)
planets_df[3,]


# Print out diameter of Mercury (row 1, column 3)
planets_df[,]

# Print out data for Mars (entire fourth row)
planets_df[,]

# You can also select multiple rows or multiple columns, my_df[1:3, 1:2]
# for example, I want to print the first seven values from the first column, "name"
planets_df[1:7, 1]

# You can also specify columns by their column names
planets_df[1:7, "name"]
           
           ]
# Select the first 5 values of diameter column
planets_df[,]


# You can also select entire columns
# for example, you can select the entire "diameter" column from planets_df
planets_df[,3]
planets_df[,"diameter"]

# alternatively, you can use the $ symbol
planets_df$diameter

# Select the rings variable from planets_df


# Print out rings_vector


###########################################################################
###########################################################################
# Lets create a vector, create a data frame, and run statistical analysis on our data frame
# There will be a lot of new functions. use ? or help() to help learn the new functions
#For example, rnorm()
?rnorm
help(rnorm)



# Create a vector called "control" using rnorm
#parameters: 50 variables with mean of 25 and standard deviation of 3
control <- rnorm(n= 50, mean = 25, sd = 3)
# We can test to see if this is correct
mean(control)
sd(control)

# create a vector called "experimental"
# Parameters: 50 variabels with mean of 35 and standard deviation of 3


# test to see if they are correct


# Graph them using hist()


# Make a data frame contain the vectors "control" and "experimental


# Lets run a t-test to see if the control differ from experimental
t.test()

###########################################################################
###########################################################################
# Lets take a look at another data set
# Lets start by loading the PlantGrowth data that comes with R
data <- PlantGrowth

# Using str() and head(), lets get an idea of the layout of the data


# In R, we can develop linear models and test them
# linear models takes the form of y = mX + b
# This fomula can be reflected in R as well
# dependant variable ~ independent variable
newmodel <- lm(weight ~ group, data = data) # this creates the linear model
analysis <- summary(newmodel) # summary allows you to look at tit's results
plot(newmodel) # we can look at a number of relating plots


###########################################################################
###########################################################################
# After all this, how do you save your work?
write.csv(data, file = "MyData.csv")

# To save your output from your analyses
sink("MyResults.txt") # in quotation marks, enter the name of your file ending in .txt

analysis # print out your data here

sink() # this will save all your output into a text file



getwd() # will tell you where all your files are saved

read.csv("MyData.csv", header = TRUE) # will read your data 


# R will look for "MyData.csv" at getwd()
# To read data from a different directory, you need to enter the full address
read.csv("C:\Users\SC\Documents\Git\MyData.csv", header = TRUE)


# Dont forget to save it to a variable for easier recall
ImportedData <- read.csv("MyData.csv", header = TRUE)

