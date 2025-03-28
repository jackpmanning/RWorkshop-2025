# This script was created by Jack Manning for the purposes of teaching an
# introduction to R workshop

# Created by: Jack Manning
# Created on: 3/27/2025


# Housekeeping
# Remove all variables from the global environment
rm(list=ls())

## data types
a <- 1

class(a)

a <- "1"

class(a)

a <- numeric(a)

class(a)

b <- "b"

c <- b

d <- TRUE

## Data structures
# Vectors

e <- c(1,3,5,7,9)

f <- seq(from = 1, to = 10, by = 2)

g <- e + f

# Matrix
h <- matrix(e)

i <- matrix(e, g)

j <- matrix(c(e,g))

k <- cbind(e,g)

# list
L <- list(a, b, c)

m <- list(ls())

# Data frames
o <- data.frame(k)

p <- rep("a", 10)



# Load necessary package
library(tibble)

# Generate small dataset
set.seed(123)  # For reproducibility
data <- tibble(
  Subject_ID = 1:10,
  Age_Group = rep(c("Young", "Older"), each = 5),
  Reaction_Time = round(rnorm(10, mean = ifelse(Age_Group == "Young", 500, 600), sd = 50), 2),
  Accuracy = round(runif(10, 0.7, 1.0), 2)
)

# View the dataset
print(data)


# Data frame manipulation

mean(data$Reaction_Time)



# pathing

# get the current working directory
getwd()

# set the directory to whatever the path is
setwd('C:/Users/jackpmanning/OneDrive - Texas A&M University/Documents/TAMIDS Workshops/R Workshop')

# list the directories in the path given
list.dirs(getwd(), recursive = TRUE)

# list the files in the path given
list.files(getwd(), recursive = TRUE)

# create a variable to store the file path to a force plate file
file_path <- file.path('C:/Users/jackpmanning/OneDrive - Texas A&M University/Documents/TAMIDS Workshops/R Workshop/cTBS70/S101/S101ECpost1.txt')

# load the data using the file_path
data_2 <- read.csv(file_path, header = FALSE)

# create a variable to store the subject's directory path
subject_directory <- file.path('C:/Users/jackpmanning/OneDrive - Texas A&M University/Documents/TAMIDS Workshops/R Workshop/cTBS70/S101/')

# list the files in the subject directory
subject_files <- list.files(subject_directory)

print(subject_files)


## For loops

# print all files in subjects files variable
for(file in subject_files){
  print(file)
}



for(i in seq(from = 1, to = 10, by = 2)){
  print(i)
}

for(i in seq(from = 1, to = 10, by = 2)){
  print(i + 1)
}



# Try to load in data, why does it not work?
for(file in subject_files){
  data_3 <- read.csv(file, header = FALSE)
}



# Loop through all files
for(file in subject_files){
  data_3 <- read.csv(paste0(subject_directory, '/', file), header = FALSE)
  
  print(file)
  
  print(mean(data_3$V3))
}

# Libraries

library(datasets)

data_4 <- iris


if (condition) {
  # do something
} else {
  # do something else
}




# idk how to use this
identical()












