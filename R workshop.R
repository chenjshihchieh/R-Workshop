##Starting R
#You can interact with R through the Console or in the script
#Console automatically runs the code
#Script requires you to press "Run" or ctrl + Enter
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
#"<-" allows you to save values by assigning it a variable
a <- 2

#You can then call back those values by typing in the variable
a

#R also saves the result of a computation
x <- 1 + 1


#Those variables will take on the property of the assigned values
#In this case, the property of the values are numerical
x - 1
y <- x * 3
y / 2

#You can assign multiple values to a variable
#However, that requires a function, c()
#All function takes the form of FunctionName()
x <- 1, 2, 3, 4, 5, 6, 7, 8, 9
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)

#The variable can be any name as long as the name does not contain a space.
#Common replacements are "_", "." and capitilizing the next word

sequence_number <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
sequence.number <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
sequenceNumber <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)

#Is there an easier way to generate a list of numbers? Google!
#Generate a list of numbers from 1 to 50


###########################################################################
###########################################################################

#In addition to numeric values, you can also store strings (aka characters)
example <- c("Apple", "Orange", " ", "1", "2")
condition <- c("Control", "Control", "Control", "Experimental", "Experimental", "Experimental")

#Using the repeat function, rep()
#using help() or ? to find out how to use the function
help(rep)
?rep

#Use functions to generate the condition variable


###########################################################################
###########################################################################
#You can also have Logical values in the forms of TRUE and FALSE
#Logical value can also be stored like others
logic <- TRUE
logic2 <- FALSE
logicVector <- c(TRUE, FALSE, TRUE)

###########################################################################
###########################################################################
#You can also reference any object in variables using square brackets, []
sequenceNumber[5]
condition[2]
condition[4]

#What happens in these cases?
condition[1 + 1]
condition[8/2]
condition[2, 4]
condition[c(2, 4)]

#You can also use logic values
sequenceNumber[TRUE]
sequenceNumber[FALSE]
sequenceNumber[c(TRUE, FALSE)]
sequenceNumber[c(TRUE, FALSE, TRUE)]
sequenceNumber[logicVector]

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

