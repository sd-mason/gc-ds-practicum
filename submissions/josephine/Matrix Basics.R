#Matrix Basics
#06-02-2021

#Task 1
ints <- matrix(100:1, byrow = TRUE, nrow = 10)
#square matrix with integers 100 down to 1
matrix(1:100, nrow = 19, ncol = 20)

#alternate methods
#task1 <- matrix(sort(1:100, decreasing = TRUE), byrow = TRUE, nrow = 10)
#task1 <- matrix(rev(1:100), byrow = TRUE, nrow = 10)

#Task 2
#50 draws from a uniform distribution ranging from 1 to 10
uniform <- runif(50, min = 1, max = 10)

#50 draws from a Poisson distribution with lambda = 5
poisson <- rpois(50, lambda = 5)

#50 draws from a normal distribution with mean = 5 and sd = 1
normal <- rnorm(50, mean = 5, sd = 1)

#50 draws from a binomial distribution with size = 10 and prob = 0.5
binomial <- rbinom(50, size = 10, prob = 0.5)

#Task 3
#matrix with the above four vectors as columns in the order they were generated
task_3_matrix <- cbind(uniform, poisson, normal, binomial)
colnames(task_3_matrix) <- c("Uniform", "Poisson", "Normal", "Binomial")
task_3_matrix

#Task 4
#Adding rows to task 3 matrix
intermediate <- cbind(uniform, poisson, normal, binomial) #matrix with the 
                                                          #additional rows
task_4_matrix = rbind(task_3_matrix, intermediate) #combining the matrices
dim(task_4_matrix)

#Challenge Task 1
#sandwich intermediary in the middle of task 3
challenge_matrix <- rbind(task_3_matrix[1:25,], intermediate, 
                          task_3_matrix[26:50,])

#Task 5 
#column means for task 4 matrix
apply(task_4_matrix, MARGIN = 2, FUN = mean) 
poisson_mean <- apply(task_4_matrix, MARGIN = 2, FUN = mean)[2]
#uniform deviates the most, followed by poisson

#Task 6
#calculate standard deviation of each column
apply(task_4_matrix, MARGIN = 2, FUN = sd)
poisson_sd <- apply(task_4_matrix, MARGIN = 2, FUN = sd)[2]
#this does explain it, uniform has the largest standard deviation

#Task 7
#make a square matrix with the first 25 integers, then print the odd rows
twenty_five <- matrix(1:25, nrow = 5, byrow = T)
twenty_five[c(1,3,5),]

#Task 8
#make a 100x5 matrix with the first 500 integers, print the odd numbered rows
five_hundred <- matrix(1:500, nrow = 100, byrow = T)
five_hundred[seq(from = 1, to = 99, by = 2),]

#Task 9
#Just like we filtered vectors using Boolean operators, we can filter matrices.
#Using the matrix produced in Task 4, create a Boolean vector that is TRUE when
#the "Poisson" column is less than the mean of that column plus one standard 
#deviation.
poisson_size_vec <- task_4_matrix[,2] < (poisson_mean + poisson_sd)
poisson_size_vec

#Task 10
#filter task 4 matrix using the task 9 vector
filtered_matrix <- task_4_matrix[poisson_size_vec,] #filtering the matrix
filtered_matrix[,2] < (poisson_mean + poisson_sd) #checking I did it right
filtered_matrix 

#Task 11
sub_filtered <- subset(task_4_matrix, subset = 
                              task_4_matrix[,2] < (poisson_mean + poisson_sd))
sub_filtered
#returns the same matrix as task 10

#Task 12
#make sure tasks 10 and 11 gave the same result by subtracting them and hope 
#for 0
filtered_matrix - sub_filtered
#Success!