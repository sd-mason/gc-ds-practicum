# operations on vectors handout
# 6-1-2021

#Intro

set.seed(255) #so our random number always produces the same vector
height <- rnorm(n = 1451, mean = 170, sd = 6) 
#could also have not said n = and so on because rnorm() always wants n, then 
#mean, then sd

# Task 1
summary(height)

#Task 2
boxplot(height, main = "Name", xlab = "X Label", ylab = "Y Label")

#Task 3
height_cv <- sd(height)/mean(height)

#Task 4
min_height <- min(height)
max_height <- max(height)
height_diff <- max_height - min_height

#Task 5
?range()
#... means any numeric or character arguments

#range() returns a vector containing the minimum and maximum of all the given 
#arguments

height_range <- range(height)

height[1]

#Task 6
height_range[2] - height_range[1]
height_diff

log_height <- log(height)
half_height <- height*0.5

#Task 7
taller <- height + half_height
