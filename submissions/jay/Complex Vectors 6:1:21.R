var1 <- TRUE
var2 <- FALSE
class(var1)

1 == 1
1 != 2
1 > 2
5 < 10
2 >= 2
2 <= 4

# Task 1
vec <- rnorm(100, 5, 1)

# Task 2
vec2 <- vec >= 5

# Task 3
vec[vec2]

# Task 4
summary(vec)
vec3 <- vec < 4.475
vec[vec3]

# Task 5
quantile(vec, probs = .95)
vec4 <- vec >= 6.448457
vec5 <- vec[vec4]
length(vec5)

# Task 6
pwo1 <- c(pwo[1:71])

# Task 7
flight[is.na(flight)] = 0
nectar[is.na(nectar)] = 0

# Task 8
necvec <- nectar/(flight + pwc + pwo1 + nectar)

# Task 9
actvec <- (nectar + flight)
inacvec <- (pwc + pwo1)
buttact <- actvec > inacvec
flight[buttact]
length(flight[buttact])
activebutts <- length(flight[buttact])
buttact2 <- actvec < inacvec
length(flight[buttact2])
lazybutts <- length(flight[buttact2])
activebutts < lazybutts

# Task 10
lazybutterflies <- inacvec[buttact2]
order(lazybutterflies)
lazybutterflies[c(45, 41, 40, 38, 36)]

inacvec
order(inacvec)
inacvec[c(50,52,58,59,63)]

# Task 11
suckybutts <- nectar > 0
inacvec[suckybutts]

nonsuckybutts <- nectar == 0
inacvec[nonsuckybutts]
