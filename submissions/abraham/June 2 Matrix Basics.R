#Abraham
#June 2
#Matrix Basics

#Task 1
sq_matrix <- matrix(100:1, nrow <- 10, byrow <- TRUE)
sq_matrix
#Task 2
uniform_vector <- runif(50, 1, 10)
poisson_vector <- rpois(50, 5)
rnormal_vector <- rnorm(50, 5, 1)
binomial_vector <- rbinom(50, 10, 0.5)
#Task 3
distrib_matrix <- cbind(uniform_vector, poisson_vector,
                       rnormal_vector, binomial_vector)
colnames(distrib_matrix, c("Uniform", "Poisson", "Normal", "Binomial"))
distrib_matrix
#Task 4
uniform_vector2 <- runif(50, 1, 10)
poisson_vector2 <- rpois(50, 5)
rnormal_vector2 <- rnorm(50, 5, 1)
binomial_vector2 <- rbinom(50, 10, 0.5)
distrib_matrix2 <- cbind(uniform_vector2, poisson_vector2,
                        rnormal_vector2, binomial_vector2)
long_matrix <- rbind(distrib_matrix, distrib_matrix2)

distrib_matrix2
long_matrix
dim(long_matrix)
#Challenge Task 1
challenge_matrix <- rbind(distrib_matrix[1:25,1:4], distrib_matrix2, distrib_matrix[26:50,1:4])
challenge_matrix
#Task 5
apply(long_matrix, MARGIN = 2, FUN = mean)
#Task 6
apply(long_matrix, MARGIN = 2, FUN = sd)
mean(runif(10000, 0, 10))
#Task 7
tf_matrix = matrix(1:25, nrow = 5)
tf_matrix
tf_matrix[c(1,3,5),]
#Task 8
big_matrix = matrix(1:500, nrow = 100)
big_matrix[seq(1,100, 2),]
#Task 9
#Just like we filtered vectors using Boolean operators, we can filter matrices. Using the matrix produced
#in Task 4, create a Boolean vector that is TRUE when the "Poisson" column is less than the mean of that
#column plus one standard deviation.
bool_vector <- long_matrix[,2]<mean(long_matrix[,2])+sd(long_matrix[,2])
bool_vector
sum(bool_vector)
#Task 10
long_matrix[bool_vector,]
#Task 11
subset(long_matrix, long_matrix[,2]<mean(long_matrix[,2])+sd(long_matrix[,2]))
#Task 12
long_matrix[bool_vector,] - subset(long_matrix, long_matrix[,2]<
                                     mean(long_matrix[,2])+sd(long_matrix[,2]))
