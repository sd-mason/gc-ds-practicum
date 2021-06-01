#More Complex Vector Indexing & Manipulations
#6-1-2021

#Task 1: Create a vector of 100 values randomly drawn from a normal distribution
#with a mean of 5 and a standard deviation of 1.
set.seed(300)
vec <- rnorm(100, 5, 1)

#Task 2
vec_big <- vec >= 5

#Task 3
vec[vec_big]

#Task 4
summary(vec)
task4_index <- vec < 4.347
task4_vec <- vec[task4_index]

#Task 5
ninty_five_percentile <- quantile(vec, 0.95)
task5_index <- vec >= ninty_five_percentile
top_five_percent_vec <- vec[task5_index]
length(top_five_percent_vec)
#top_five_percent_vec has length 5

#Task 6 
pwo <- pwo[-(72:74)]

#Task 7
flight[is.na(flight)] <- 0
nectar[is.na(nectar)] <- 0
pwc[is.na(pwc)] <- 0

#Task 8
total_time <- flight + nectar + pwc + pwo
proportion_nectaring <- nectar/total_time

#Task 9
total_active <- flight + nectar
total_inactive <- pwc + pwo
active_v_inactive <- total_active > total_inactive 
inactive_v_active <- total_inactive > total_active 
more_active <- length(flight[active_v_inactive])
more_inactive <- length(flight[inactive_v_active])
#These butterflies are generally more inactive. I deternimed this by outting the
#butterflies into two categories based on whether they spent more time being 
#active or inactive and then compared their lengths. 

#Task 10
proportion_inactive <- total_inactive/total_time
order(proportion_inactive)
order(total_inactive)
#The five most inactive butterflies (proportional to their total time) are 
#butterflies 51, 52, 58, 59, 63. Looking at gross time spent perching, the most 
#inactive are butterflies 50, 52, 58, 59, and  63. I found this using the 
#order() function.

#Task 11
did_they_nectar <- nectar > 0
these_nectar <- total_passive[did_they_nectar]
these_nectar
#These butterflies largely spent no time perching.