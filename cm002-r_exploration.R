#!/usr/bin/env Rscript

# R PACKAGES
# load the packages just installed
library(tibble)
library(gapminder)

# USING R AND RSTUDIO
# Try some arithmetic from a script vs. the console
5 + 2

# Try some arithmetic on the variable on a line of code above the variable definition 
number + 2

# Store a number in a variable called number using <- (read this arrow as “gets”).
number <- 5 + 2

# Try some arithmetic on the variable
number + 2

# Try some arithmetic on an undefined variable
a + 2

# VECTORS
# How long was your commute this morning, in minutes?

times <- c(60,40, 33, 15, 20, 55, 35)

# to define and print at the same time, put parentheses around the entire statement
# highlight whole statement and then press left round parenthesis
(times <- c(60,40, 33, 15, 20, 55, 35))
times / 60

# FUNCTIONS, PART I
# calculate mean of commute times
mean(times)

# What about the sqrt() function?
sqrt(times)

# Try the range() function, for example. What’s the output?
range(times)

# Comparisons
# Which of our travel times are less than (say) 30 minutes? Use <.
times < 30

# Which of our travel times are equal to … (pick something)? 
times == 20

# What about not equal to it?
times != 20

# Which of our travel times are greater than 20 and less than 50?
times > 20 & times < 50

# What about less than 20 or greater than 50?
times < 20 | times > 50

# Try using the which() function on one of the above
# Returns indices of those that are true
which(times < 30)

# What about any()? 
# Any: returns true if any of them are true
any(times < 30)

# What about all()?
# All: returns true if all are true
all(times < 30)

# Booleans - TRUE = 1, FALSE = 0
sum(times < 30)

# SUBSETTING
# Extract the third entry.
times[3]

# Extract everything except the third entry.
times[-3]

# Extract the second and fourth entry. The fourth and second entry.
times[c(2,4)]
times[c(4,2)]

# Extract the second through fifth entry – make use of : to construct sequential vectors.
times[2:5]

# Extract all entries that are less than 30 minutes.
times[times < 30]

# Replace two entries with new travel times.
times[c(2,4)] <- 30

# “Cap” entries that are “too large” at some set value. 
times[times > 50] <- 50 

# Remove an entry, by overwriting times.
times <- times[c(1:6)]

# NA
# Add NA to the vector of times.
times[7] <- NA

# What’s the mean of this new vector of times?
mean(times)

# FUNCTIONS, PART II
# Access the documentation of the mean() function by executing ?mean
?mean

# Input TRUE for the na.rm argument in both ways.
mean(times, 0, TRUE)
mean(times, na.rm = TRUE)

# DATA FRAMES
mtcars

# Use some of these built-in R functions to explore mtcars, 
# without printing the whole thing to screen:
#	head(), tail(), str(), nrow(), ncol(), summary(), row.names() (yuck), names().
head(mtcars)
tail(mtcars)
str(mtcars) # shows structure of the dataframe (shows snippet of entries)
nrow(mtcars)
ncol(mtcars)
summary(mtcars)
row.names(mtcars)
names(mtcars) # column names

# What’s the first column name in the mtcars dataset?
names(mtcars)[1]

# Which column number is named "wt"?
which(names(mtcars) == "wt")

# Extract the vector of mpg values. 
mtcars$mpg

# What’s the mean mpg of all cars in the dataset?
mean(mtcars$mpg, na.rm = TRUE)

# R PACKAGES
# Try the following two approaches to access information about the tibble package. 
# Run the lines one-at-a-time.
# Vignettes are your friend, but do not always exist
?tibble
browseVignettes(package = "tibble")


