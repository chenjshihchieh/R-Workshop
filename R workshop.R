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
x <- 1, 2, 3, 4, 5, 6, 7, 8, 9
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)

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
#You can reference any object in variables with square brackets, [], by referencing those numbers
sequenceNumber[5]
sequenceNumber[2]
sequenceNumber[4]

#What happens in these cases?
sequenceNumber[1 + 1]
sequenceNumber[8/2]
sequenceNumber[2, 4]
sequenceNumber[c(2, 4)]

#Try to reference all odd/even number objects




###########################################################################
###########################################################################
#In addition to numeric values, there are also strings (aka characters)
#example <- c("Apple", "Orange", " ", "1", "2") 
condition <- c("Control", "Control", "Control", "Experimental", "Experimental", "Experimental")

#Making this process easier Using the repeat function, rep()
#using help() or ? to find out how to use the function
help(rep)
?rep

#Generate a list of conditions containing 25 "Control" and 25 "Experimental" and assign it a variable

#


###########################################################################
###########################################################################
#You can also have Logical values in the forms of TRUE and FALSE
#Logical value can also be stored like others
logic <- TRUE
logic2 <- FALSE
logicVector <- c(TRUE, FALSE, TRUE)

#You can use various logical operator 


###########################################################################
###########################################################################
#A variable with a list of objects is only one dimensionl
#Use data frames to create a 2 dimensional chart
#First, create some data using rnorm()
Control <- rnorm(n= 50, mean = 10, sd = 2)
#We can test to see if this is correct
mean(Control)
sd(Control)

Experimental <- rnorm(n=50, mean = 20, sd = 3)
#We can test to see if this is correct
mean(Experimental)
sd(Experimental)

#You can graph out each variable to see if they are truely normal
hist(Control)
hist(Experimental)

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

