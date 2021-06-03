# 06/02/2021 am10:20 Matrix Basics

# TASK 1
task1_reversematrix <- matrix(100:1, nrow = 10, byrow = TRUE)
task1_reversematrix

# TASK 2 
runif <- runif(50, min = 1, max = 10)
rpois <- rpois(50, 5)
rnorm <- rnorm(50, 5, 1)
rbinom <- rbinom(50, 10, 0.5)

# TASK 3
task3_matrix <- cbind(runif, rpois, rnorm, rbinom)
colnames(task3_matrix, c("runif", "rpois", "rnorm", "rbinom"))
#OR
colnames(task3_matrix) <- c("runif", "rpois", "rnorm", "rbinom")


# TASK 4
task3_matrix <- cbind(runif, rpois, rnorm, rbinom)
task3_matrix2 <- cbind(runif, rpois, rnorm, rbinom)
task4_matrix <- rbind(task3_matrix, task3_matrix2)
task4_matrix
dim(task4_matrix)

# TASK 5

matrix(sort(1:100, decreasing = TRUE))



####
# TASK 7
task7_matrix <- matrix(1:25, nrow = 5)
task7_matrix[c(1, 3, 5), ]

# TASK 8
task8_matrix <- matrix(1:500, nrow = 100)
task8_matrix[seq(from = 1, to = 100, by = 2)]
task8_matrix

# TASK 9
mean(task4_matrix[,2])
task9_booleanvector <- task4_matrix[,2] < 7.18
task9_booleanvector

# TASK 10
task9_booleanvector
task4_matrix[task9_booleanvector,]

# TASK 11
?subset()
subset(task4_matrix,  < 7.18)

# TASK 12








