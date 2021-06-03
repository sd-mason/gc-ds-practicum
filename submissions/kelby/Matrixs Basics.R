#Matrix Basics Kelby Cox
#6/2/2021

#Task 1
#Creating the matrix
task1 <- matrix(100:1, ncol = 10, nrow = 10, byrow = T)
#OR task1 <- matrix(sort(1:100, decreasing = T), ncol = 10, nrow = 10, byrow = T)
#OR rev(1:100)

#Task 2
#50 draws from a uniform distribution ranging from 1 to 10
task2a <- runif(50, min = 1, 10)
#50 draws  from a Poisson distribution with lambda = 5
task2b <- rpois(50, 5)
#50 draws from a normal distribution with mean = 5 and sd = 1
task2c <- rnorm(50, 5, 1)
#50 draws from a binomial distribution with size = 10 and prob = 0.5
task2d <- rbinom(50, 10, 0.5)
#ALT solution from class:
#50 draws from a uniform distribution ranging from 1 to 10
#uniform <- c(runif(50, min = 1, max = 10))

#50 draws from a Poisson distribution with lambda = 5
#poisson <- c(rpois(50, lambda = 5))

#50 draws from a normal distribution with mean = 5 and sd = 1
#normal <- c(rnorm(50, mean = 5, sd = 1))

#50 draws from a binomial distribution with size = 10 and prob = 0.5
#binomial <- rbinom(50, size = 10, prob = 0.5)
#Task 3
#distrib_matrix = cbind(uniform_vector, poisson_vector,
                       #rnormal_vector, binomial_vector)
#colnames(distrib_matrix, c("Uniform", "Poisson", "Normal", "Binomial"))
#distrib_matrix
#colnames(distrib_matrix)[1] <- "Uniform"

#Task 3
#Creating the matrix with all the vectors from task2 
all_task2_matrix <- cbind(task2a, task2b, task2c, task2d)
#naming the columns
column_names <- c("Uniform", "Poisson", "Normal", "Binomial")
colnames(all_task2_matrix) <- column_names

#Task 4
#rerunning the numbers, in new vectors for ease
task2e <- runif(50, 1, 10)
task2f <- rpois(50, 5)
task2g <- rnorm(50, 5, 1)
task2h <- rbinom(50, 10, 0.5)
#Creating matrix holding all new task4 vectors
all_task4_matrix <- cbind(task2e, task2f, task2g, task2h)
#naming columns, for fun, not really needed
colnames(all_task4_matrix)
#binding the task2 and task4 matrixes
task2_and_4 <- rbind(all_task2_matrix, all_task4_matrix)
#If you want to index for specific name: colnames(distrib_matrix)[1] <- c("Uniform")

#Challenge Task
#used the indexing to work with specifically the data sections I wanted
challengetask <- rbind(all_task2_matrix[1:25,], all_task4_matrix, all_task2_matrix[26:50,])

#Task 5
#Example solution:
#matrix2 <- matrix(1:9, nrow = 3, ncol = 3)
#matrix2
#rowSums(matrix2)
#apply(matrix2, MARGIN = 1, FUN = sum) # Margin = 1 applies sum function to each
#apply(dist_matrix3, MARGIN = 2, FUN = mean)

#Task 6
#Example solution:
#matrix2 <- matrix(1:9, nrow = 3, ncol = 3)
#matrix2
#rowSums(matrix2)
#apply(matrix2, MARGIN = 1, FUN = sum) # Margin = 1 applies sum function to each
#apply(dist_matrix3, MARGIN = 2, FUN = sd)

#Task 7
#5x5 matrix w first 25 integers, printing only odd rows
matrix7 <- matrix(1:25, ncol = 5, nrow = 5, byrow = T)
matrix7[(c(1,3,5)),]

#Task 8
#creating a larger matrix, printing out the odd rows, using seq()
matrix8 <- matrix(1:500, ncol = 5, nrow = 100, byrow = F)
matrix8[seq(1, 100, 2),]

#Task 9
#filtering through the matrix, using a boolean to see which are less than the 
#mean plus one sd, this is as far as I got totally by myself...
Poisson_true <- task2_and_4[,2] < 7.18

#Task 10
#based off of shared code from class
task2_and_4[Poisson_true,]

#Task 11
#Taken from class contributions
#sub_true <- subset(task2_and_4, subset =
                     #task2_and_4[,2] < (possion_mean + poisson_sd))

#Task 12
Task10 - sub_true

#Subset function takes data frames or matrixes, and you can set the subset to 
#specifics that you want to select/filter, creates a matrix containing all the 
#values that you selected