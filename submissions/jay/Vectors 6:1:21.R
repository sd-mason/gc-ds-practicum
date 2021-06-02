# Operations on Vectors 
# 6/1/2021

# Introduction

set.seed(255)
height <- rnorm(n = 1451, mean = 170, sd = 6)

# Task 1
summary(height)

# Task 2
boxplot(height)

# Task 3
height_cv <- 6/170

# Task 4
min_height <- 150.7
max_height <- 188.8
height_diff <- max_height-min_height

# Task 5
?range()
height_range <- range(height)
## [1] 176.291
height[1]
height[1:5]
height[37:162]
height[c(1,4,106,563,1011)]
height[-(1001:1451)]
height[-c(2,280,313)]

# Task 6
height_range[2] - height_range[1]
log_height <- log(height)
half_height <- height*0.5

# Task 7
taller <- height + half_height
