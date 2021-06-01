#More Complex Vector Indexing & Manipulations
#Kelby Cpx 6/1/21

#Task 1
vec1 <- rnorm(n= 100, mean = 5,  sd = 1)

#Task 2
output1 <- vec1 >= 5

#Task 3
vec1[output1]
#What happens is you get ouput that lists all of the TRUE original values from
#the vec1 and then not including the numbers that tested FALSE

#Task 4
vec2 <- vec1[vec1 < 4.160]

#Task 5
vec3 <- vec1[vec1 >= quantile(vec1, probs=.95)]
length(vec3)
#The length is 5

#Task 6 
pwo2 <- pwo[1:71]

#Task 7
flight[is.na(flight)] <- 0
nectar[is.na(nectar)] <- 0
pwc[is.na(pwc)] <- 0
pwo2[is.na(pwo2)] <- 0

#Task 8
necpro <- nectar[1:71]/flight

#Task 9
vec4 <- flight[1:71] + nectar[1:71]
vec5 <- pwo2[1:71] + pwc[1:71]
#overall, they seem to be more inactive, you can get a good overview of this by 
#a boolean:
vec6 <- vec4 <= vec5

#Task 10  
vec7 <- order(vec5)
#So, it looks like butterfly 50, 52, 58, 59, and 63 are the most inactive

#Task 11
nectaring <- nectar > 0
overall_nectaring <- vec5[nectaring]
overall_nectaring
vec5
#No, no they do not