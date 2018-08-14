##Starting R
#R is a programming language that allows a computer to take inputs, make calculations, and generate outputs
#You can interact with R through the Console or in the script by entering code into them
#Console automatically runs the code when you press enter
#Script requires you to press "Run" or ctrl + Enter on selected lines of code
#R takes objects and generate outputs base on functions and/or operators
1 + 1

2 - 1

#Multiply (*) and divide (/)
2 * 3

6 / 2

#Squaring numbers (^)
2 ^ 3

#Square roots
sqrt(25)

#R follows BEDMAS/PEMDAS

#IMPORTANT: R does not save your work unless prompted to
#"<-" allows you to save any object by assigning it a variable
a <- 2

#You can then call back those objects by typing in the variable
a

#R also saves the result of a computation
#R FIRST does the computation THEN assign the resulting object to a variable
x <- 1 + 1
result1 <- 2 * 3
result2 <- 6/2

#Those variables will take on the property of the assigned values
#In this case, the property of the values are numerical
x - 1
y <- result1 / x
y * result2

#You can only assign a single object to a variable
#However, that isen't very useful but functions can help

###########################################################################
###########################################################################
#All function takes the form of FunctionName()
#c() allows us to concatenate a list of objects into one object
number <- 1, 2, 3, 4, 5, 6, 7, 8, 9
number <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)

#The variable can be any name as long as the name does not contain a space.
#Common replacements are "_", "." and capitilizing the next word

sequence_number <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
sequence.number <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
sequenceNumber <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)

#Is there an easier way to generate a list of numbers? Google!
#Generate a list of numbers from 1 to 50 and assign it to a variable


###########################################################################
###########################################################################
#Each object in your list is given a number
#You can extract any object in variables with square brackets, [], by referencing those numbers
#This is indexing
number[5]
number[2]
number[4]

#What happens in these cases?
number[1 + 1]
number[8/2]
number[2, 4]
number[c(2, 4)]

#Try to reference all odd/even number objects


###########################################################################
###########################################################################
#You can also have Logical values in the forms of TRUE and FALSE
#You can use various logical operator 
# (>, <, >=, <=, ==, =/=)
5 > 3
5 < 3

#the operators also apply to variables
x <- 2
x == 2
x > 3
example <- c(1:4)
example < 3
example == 3

#you can use logicals to index a variable
example[c(TRUE, TRUE, FALSE, FALSE)]
example[c(TRUE, FALSE)]
example[example < 3]
example[example == 2]



###########################################################################
###########################################################################
#In addition to numeric values, there are also strings (aka characters)
fruits <- c("Apple", "Apple", "Orange", "Orange", "Banana", "Pineapple", "Watermelon", "Banana", "Watermelon", "Kiwi")

#Generate a list of conditions containing 50 "Control" and 50 "Experimental" and assign it a variable
#Making this process easier Using the repeat function, rep()
#using help() or ? to find out how to use the function
help(rep)
?rep


###########################################################################
###########################################################################
#Generating a data with normal distribution
#Create some data using rnorm()
data1 <- rnorm(n= 50, mean = 10, sd = 2)
#We can test to see if this is correct
mean(data1)
sd(data1)

data2 <- rnorm(n=50, mean = 20, sd = 3)
#We can test to see if this is correct
mean(data2)
sd(data2)

#You can graph out each variable to see if they are truely normal
hist(data1)
hist(data2)

#We will come back to these data later


###########################################################################
###########################################################################
#A variable with a list of objects is only one dimensionl
#Use data frames to create a 2 dimensional chart

#combine the 2  one-dimensional data
#Don't forget to save it to a variable because R won't do it automatically
df <- data.frame(Control, Experimental)

#typing in the variable you used will call out your data frame
df

#Other ways to look at your data
head()
tail()
str()
summary()

#Lets run a t-test to see if the control differ from exerimental
t.test(df)

###########################################################################
###########################################################################

