#Console automatically runs the code when you press enter
#Script requires you to press "Run" or ctrl + Enter on selected lines of code
#R takes objects and generate output(s)

#R Consists of objects and actions
#2 main syntactical structure
## Object Action Object (e.g., two plus two)
##Action(Object)

##Example: Taking numbers and applying numeric operators
#Notice the form Object Action Object
#Add and subtract
1 + 1
2 - 1

#To multiply
2 * 3

#To divide
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
#c() allows us to concatenate a list of objects into one object
#Notice the syntactical form Action(Object)
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
# (>, <, >=, <=, ==, !=)
5 > 3
5 < 3

#the operators also apply to variables
x <- 2
x == 2
x > 3
example <- c(seq(1, 4))
example < 3
example == 3

#you can use logicals to index a variable
example[c(TRUE, TRUE, FALSE, FALSE)]
example[c(TRUE, FALSE)]
example[example < 3]
example[example == 3]



###########################################################################
###########################################################################
#In addition to numeric values, there are also strings (aka characters)
fruits <- c("Apple", "Orange", "Banana", "Pineapple", "Watermelon", "Kiwi")
#You can also referece strings
fruits[4]

#sample()
fruits.data <- sample(fruits, 10, replace = TRUE)
#how many "watermelon" are in the sample?
fruits.data[fruits.data == "Watermelon"]

#Generate a list containing 10 of each fruit
#Making this process easier Using rep()
#using help() or ? to find out how to use the function
help(rep)
?rep


###########################################################################
###########################################################################
#Generating a data with normal distribution
#Create some data using rnorm()
control <- rnorm(n= 50, mean = 10, sd = 2)
#We can test to see if this is correct
mean(control)
sd(control)

experimental <- rnorm(n=50, mean = 20, sd = 3)
#We can test to see if this is correct
mean(experimental)
sd(experimental)

#You can graph out each variable to see if they are truely normal
hist(control)
hist(experimental)

#You can also plot a graph with control and experimental values
plot(control, experimental)

###########################################################################
###########################################################################
#A variable with a list of objects is only one dimensionl
control
experimental

#combine the 2  one-dimensional data
#Use data frames to create a 2 dimensional chart
#Don't forget to save it to a variable because R won't do it automatically
df <- data.frame(value, condition)

#typing in the variable you used will call out your data frame
df

#Other ways to look at your data
head()
tail()
str()
summary()

#You can also reference specific elements of your data frame using the square brackets
#nameofdf[row, column]
df[2, 1] #references a value from second row of the first column
df[1] #references values from the first column
df$control #references values from the column named "value"

###########################################################################
###########################################################################
#Lets run a t-test to see if the control differ from experimental
t.test(df)

###Analyses by developing linear models
#Lets start by loading the PlantGrowth data that comes with R
data <- PlantGrowth

#We can look at the structure of the data
summary(data)
str(data)

#linear models takes the form of y = mX + b
#This fomula can be reflected in R as well
#dependant variable ~ independent variable
newmodel <- lm(weight ~ group, data = data) #this creates the linear model
analysis <- summary(newmodel) #summary allows you to look at tit's results
plot(newmodel) #we can look at a number of relating plots
###########################################################################
###########################################################################
#After all this, how do you save your work?
write.csv(data, file = "MyData.csv")

#To save yoru output from your analyses
sink("MyResults.txt") #in quotation marks, enter the name of your file ending in .txt
analysis #print out your data here
sink() #this will save all your output into a text file

getwd() #will tell you where all your files are saved

read.csv("MyData.csv", header = TRUE) #will read your data 
#R will look for "MyData.csv" at getwd()
#To read data from a different directory, you need to enter the full address
read.csv("C:\Users\SC\Documents\Git\MyData.csv", header = TRUE)
#Dont forget to save it to a variable for easier recall
ImportedData <- read.csv("MyData.csv", header = TRUE)