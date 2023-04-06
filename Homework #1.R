# 8/26/21
# First Statistics Class
# I can use R to add
3+2
# In R you can create objects 
z <- 300/100

# Save a word as an object
x <- "Word"

# Change x to a number
x <- 5

# Here's some other examples of objects
Word <- "Word"
Number <- 1
Calculation <- 3+2 

# Sequence of numbers
seq(1,10)



# Save it in an object
seq <- seq(1,10)

#Repeat a number
rep(10, times = 25)

# Put that in an object
Repeat <- rep(10, times = 25)

# Make sequence of 25 numbers
Sequence <- seq(1,25)

# Create a dataset 
Dataset <- data.frame(Repeat, Sequence)

# Use head command
head(iris)

# What kinds of variables do I have in my dataset? 
# use the str command
str(iris)

# Names of the variables
names(iris)

# Row names
rownames(iris)

# Create table
table(iris$Species)

# How to specify a variable
iris$Petal.Width

# Look at a different variable
iris$Sepal.Length

# Create a dataframe

Dataframe <- data.frame(
          Words = c("one", "two", "three", "four"),
          Numbers = c(1,2,3,4))

#Summary command - Gives overview of the dataset
