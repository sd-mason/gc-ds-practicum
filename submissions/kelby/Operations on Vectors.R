#operations on Vectors
#6/1/2021

set.seed(255) #so our random number generator always produces the same vector
height <- rnorm(n= 1451, mean = 170,  sd = 6)
?rnorm()

#Task 1 
summary(height)

#Task 2
boxplot(height)

#Task 3
height_cv <- 6/170

#Task 4
min_height <- 150.8
  
max_height <- 188.2
  
height_diff <- 188.2 - 150.8 

#Task 5 
?range()

# "...	is any numeric or character objects", an argument of range()
#"Range returns a vector containing the minimum and maximum of 
#all the given arguments."

height_range <- range(height, na.rm = FALSE, finite =FALSE)

#Task 6
height[1]
height_range[2] - height_range[1]

#Task 7
log_height <- log(height)
half_height <- height+0.5 
taller <- height + half_height
