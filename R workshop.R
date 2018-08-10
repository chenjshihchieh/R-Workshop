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
#Common replacements are "_" and "."

sequence_of_number <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)

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

#Use function to generate the condition variable


###########################################################################
###########################################################################
#You can also reference any object in variables using square brackets, []
sequence_of_number[5]
condition[3]
condition[4]

#You can also have Logical values in the forms of TRUE and FALSE
