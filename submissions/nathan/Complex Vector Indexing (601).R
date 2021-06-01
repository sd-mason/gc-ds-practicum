# More Complex Vector Indexing & Manipulation

var1 <- TRUE
var2 <- FALSE
class(var1)

# Task 1
vector1 <- rnorm(100,5,1)
vector1 >= 5

# Task 2
vector2 <- (vector1 >= 5)
vector2

# Task 3
vector1[vector2]

# Task 4
summary(vector1)
vector3 <- (vector1 >= 4.350)

# Task 5
?quantile()
quantile(vector1, probs = 0.95) # 95% is 7.0064
vector4 <- (vector1 >= 7.0064)

# Task 6
pwo_new <- pwo[1:71]

# Task 7
flight[is.na(flight)] <- 0
nectar[is.na(nectar)] <- 0

# Task 8
vector5 <- c(nectar/(flight+nectar+pwc+pwo_new))
vector5

# Task 9
active <- c(flight, nectar)
inactive <- c(pwc, pwo_new)
summary(active)
summary(inactive)
vector6 <- c(inactive-active)
vector6 > 0 # the inactive time is larger than the active time on average

# Task 10
vector7 <- order(vector6, na.last = TRUE, descending = TRUE, method = c("radix"))
vector7[1:5] # least active are butterflies 12, 52, 58, 59, 63
vector7

# Task 11
nectar_yes <- c(which(nectar != 0))
nectar_yes
nectar_yes[pwc]
nectar_yes[pwo_new]
pwc[nectar_yes]
pwo_new[nectar_yes]
# The butterflies that nectar do not spend much time purchasing
