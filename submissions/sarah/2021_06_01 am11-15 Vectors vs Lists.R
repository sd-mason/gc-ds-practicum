# vectors created with c() concacinate function
# List created with list()

a <- c(1, 2, 3, "cat")

b <- list(1, 2, 3, "cat")
b[[4]]

c <- c(1, 2, 3, 4)
d <- list(1, 2, 3, "cat", c)
d[[5]][3]
