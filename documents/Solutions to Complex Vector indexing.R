# Task 1
task1 <- rnorm(100, 5, 1)

# Task 2
task2 <- task1 >= 5

# Task 3
length(task1[task2]) # we dropped all the values that were less than 5

# Task 4
quart1 <- summary(task1)[2] # isolating the first quartile
task4 <- task1[task1 < quart1]

# Task 5
task5 <- task1[task1 >= quantile(task1, 0.95)]

# Task 6
pwo <- pwo[-(72:74)] # make sure the - sign is outside the parentheses

# Task 7
flight[is.na(flight)] <- 0
nectar[is.na(nectar)] <- 0

# Task 8
total <- flight + nectar + pwc + pwo # total observation time
prop_nectar <- nectar/total

# Task 9
active <- flight + nectar
inactive <- pwc + pwo
mean(active)
mean(inactive) # averaged across butterflies, inactive behavior is
               # more common

# Task 10
ord <- order(inactive) # by default orders ascending, so large values
                       # of ord indicate more inactive time
ordered_inactive <- inactive[ord] # sorts the inactive list
most_inactive <- ordered_inactive[67:71]

# Task 11
nec <- nectar > 0 # creating a Boolean vector where TRUE means that
                  # the butterfly did spend some time nectaring
inactive[nec] # we can then index inactive (the perching behaviors)
              # by this logical vector to find that, generally, when
              # a butterfly is in nectar acquisition mode, it does not
              # stop to perch for long
