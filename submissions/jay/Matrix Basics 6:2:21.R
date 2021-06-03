# Task 1
matrix(100:1, byrow = TRUE, nrow = 10)
# matrix(sort(1:100, decreasing = T), byrow = T, nrow = 10)
# rev(1:100) reverses order
 
# Task 2
uniform <- runif(50, min = 1, max = 10)
poisson <- rpois(50, lambda = 5)
normal <- rnorm(50, mean = 5, sd = 1)
binomial <- rbinom(50, size = 10, prob = 0.5)

# Task 3
dataset <- cbind(uniform, poisson, normal, binomial)

DistributionType <- c("Uniform", "Poisson", "Normal", "Binomial")
colnames(dataset) <- DistributionType
# colnames(matrix, names)
# colnames(dataset, c("Uniform", "Poisson", "Normal", "Binomial"))
# Name a specific column
# e.g. naming just the first column
# colnames(dataset)[1] <- "Uniform"

# Task 4
uniform2 <- runif(50, min = 1, max = 10)
poisson2 <- rpois(50, lambda = 5)
normal2 <- rnorm(50, mean = 5, sd = 1)
binomial2 <- rbinom(50, size = 10, prob = 0.5)

dataset2 <- cbind(uniform2, poisson2, normal2, binomial2)

bigdataset <- rbind(dataset, dataset2)
dim(bigdataset)

# Challenge Task 1
rbind((rbind(dataset[1:25,], dataset2)), dataset[26:50,])

# rbind(dataset[1:25,], dataset2, dataset[26:50,])

# Task 5
apply(dataset, MARGIN = 2, FUN = mean)

# MARGIN = 1 by row
# MARGIN = 2 by column
# MARGIN = 1,2 by row and column (aka by cell)

# Task 6
apply(dataset, MARGIN = 2, FUN = sd)

# Task 7
mat <- matrix(1:25, byrow = T, nrow = 5)
mat[c(1,3,5),]

# Task 8 
bmat <- matrix(1:500, byrow = T, nrow = 100)
bmat[c(seq(from = 1, to = 100, by = 2)),]

# Task 9
meanbds <- apply(bigdataset, MARGIN = 2, FUN = mean) 
sdbds <- apply(bigdataset, MARGIN = 2, FUN = sd)
poissonmean <- meanbds[2]
poissonsd <- sdbds[2]

boolinbds <- matrix(bigdataset[,2] < meanbds[2] + sdbds[2], byrow = T, ncol = 1)

# boolindbds <- bigdataset[,2] < meanbds[2] + sdbds[2]

# Task 10
bigdataset[boolinbds,]

# Task 11
filteredbds <- subset(bigdataset, subset = bigdataset[,2] < (poissonmean + poissonsd))

#Task 12
task10 - sub_filtered
