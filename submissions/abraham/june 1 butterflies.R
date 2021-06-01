#Abraham June 1 Complex Vector Indexing

distrib <- rnorm(100, 5, 1)
bool_list <- distrib >= 5
distrib[bool_list]
fq <- distrib[distrib < summary(distrib)[[2]]]
nfquant <- distrib[distrib >= quantile(distrib, 0.95)]




pwo_better <- pwo[-(length(pwo)-2):-length(pwo)]
pwo_better[is.na(pwo_better)] <- 0
flight[is.na(flight)] <- 0
nectar[is.na(nectar)] <- 0
pwc[is.na(pwc)] <- 0
sum_time = flight + nectar + pwc + pwo_better
proportion <- nectar / sum_time
proportion[1:10]
active <- flight + nectar
inactive <- pwc + pwo_better
active > inactive
length(flight[active > inactive])

inactive
order(inactive)


#Task 10
inactive
lazy <- order(inactive)[67:71]
lazy
lazy_prop <- inactive / sum_time
lazy_prop
lazy_prop_five <- order(lazy_prop)[67:71]
lazy_prop_five
#Task 11
nectarized <- which(nectar > 0)
inactive[nectarized] #When they are nectaring, they are not perching
inactive[-nectarized] #When they are not nectoring, they are perching
length(nectarized)