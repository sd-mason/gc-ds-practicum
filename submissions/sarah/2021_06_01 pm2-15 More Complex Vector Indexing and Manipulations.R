# 06/01/2021 1:00pm 
# More Complex Vector Indexing and Manipulations (Boolean Operators)

# Introduction
var1 <- TRUE
?var
var2 <- FALSE
class(var1)
class(var2)
1==1
1!=2
1>2
2*5==10

# TASK 1
task1 <- rnorm(100, 5, 1)

# TASK 2
task1 >= 5
task2 <- task1 >= 5

# TASK 3
task1[task2]

# TASK 4
summary(task1)
task4 <- task1 < 4.083

# TASK 5
task5 <- task 1 >= 
?quantile()
quantile(task1, .95) ##6.766465
length(quantile(task1, .95))

# TASK 6
pwo_OMIT3 <- pwo[1:71]

# TASK 7
pwo_OMIT3[is.na(pwo_OMIT3)] <- 0
flight[is.na(flight)] <- 0
nectar[is.na(nectar)] <- 0

# TASK 8
task8 <- c(nectar/(flight+nectar+pwc+pwo_OMIT3))
task8

# TASK 9
task9active <- c(flight+nectar)
task9active
task9inactive <- c(pwc+pwo_OMIT3)
task9inactive
summary(task9active)
summary(task9inactive)
    #more inactive, mean higher

# TASK 10
?order
task9inactiveascending <- order(task9inactive)
task9inactiveascending [66:71] #50 52 58 59 63

# TASK 11
task11somenectaring <- which(nectar != 0)
task11somenectaring


