#Task 1
dat <- read.csv("C:\\Users\\josep\\Downloads\\titanic.csv")

#Task 2
str(dat)
head(dat)
hist(dat$Survived, breaks = 20)

boxplot(dat$Fare ~ dat$Pclass)

plot(dat$Fare ~ dat$Age)

by_sex <- aggregate(dat, by = list(dat$Sex), FUN = mean)
by_sex_sub <- aggregate(dat[, c(3, 4, 11)], by = list(dat$Sex), FUN = mean)
by_sex_sub

by_sex_form <- aggregate(cbind(Survived, Pclass, Fare) ~ Sex, FUN = mean, dat = dat)
by_sex_form

age_by <- aggregate(Age ~ Pclass + Sex, FUN = mean, dat = dat)
age_by

plot(dat$Survived ~ dat$Pclass)
?hist
?aggregate
by_survived_class <- aggregate(Survived ~ Pclass, FUN = sum, dat= dat)
by_survived_class

class <- dat[,4]
class
in_second <- sum(class)
in_second

alph <- dat[order(dat$Name),]
first_alph <- sum(alph[1:445, 3])
first_alph

last_alph <- sum(alph[446:891, 3])
last_alph

expensive <- dat[,11] > 400
expensive
dat[expensive,]

if_parch_vec <- dat$Parch > 0
if_sibsp_vec <- dat$SibSp > 0
total_rels <- if_parch_vec + if_sibsp_vec
if_rels <- total_rels > 0

with_rels_matrix <- dat[if_rels,]
with_rels_matrix
dim(with_rels_matrix)
sum(with_rels_matrix[,3])
179/354
women_rels_mat <- with_rels_matrix[,6] == "female"
women_rels <- length(with_rels_matrix)

#does city of embarkment impact survival?
emb_c_vec <- dat[,13] == "C"
emb_c <- dat[emb_c_vec,]

emb_s_vec <- dat[,13] == "S"
emb_s <- dat[emb_s_vec,]

emb_q_vec <- dat[,13] == "Q"
emb_q <- dat[emb_q_vec,]

num_c <- dim(emb_c)[1]
num_s <- dim(emb_s)[1]
num_q <- dim(emb_q)[1]

num_sur_c <- sum(emb_c[,3])
num_sur_s <- sum(emb_s[,3])
num_sur_q <- sum(emb_q[,3])

prop_sur_c <- num_sur_c /num_c
prop_sur_s <- num_sur_s /num_s
prop_sur_q <- num_sur_q /num_q

prop_sur_c #0.5535
prop_sur_s #0.3369
prop_sur_q #0.3896
#half of the people from c survived, a third from s, and .38 from q

#what are the classes of the people from the different towns?
class_avg_c <- sum(emb_c[,4])/num_c #1.88
class_avg_s <- sum(emb_s[,4])/num_s #2.35
class_avg_q <- sum(emb_q[,4])/num_q #2.90
#q is highest

#what percent of the embarking crews are women?
women_c_vec <- emb_c[,6] == "female"
women_c_matrix <- emb_c[women_c_vec,]
women_c <- dim(women_c_matrix)[1]

women_s_vec <- emb_s == "female"
women_s_matrix <- emb_s[women_s_vec,]
women_s <- dim(women_s_matrix)[1]

women_q_vec <- emb_q[,6] == "female"
women_q_matrix <- emb_q[women_q_vec,]
women_q <- dim(women_q_matrix)[1]

prop_women_c <- women_c/num_c #0.434
prop_women_s <- women_s/num_s #0.454
prop_women_q <- women_q/num_q #0.467

emb_c[is.na(emb_c)] <- 0
emb_s[is.na(emb_s)] <- 0
emb_q[is.na(emb_q)] <- 0

ages_c_boo <- emb_c[,7] > 0
ages_c_vec <- emb_c[ages_c_boo,7]

ages_s_boo <- emb_s[,7] > 0
ages_s_vec <- emb_s[ages_s_boo,7]

ages_q_boo <- emb_q[,7] > 0
ages_q_vec <- emb_q[ages_q_boo,7]

avg_age_c <- mean(ages_c_vec)
avg_age_s <- mean(ages_s_vec)
avg_age_q <- mean(ages_q_vec)



num_people <- dim(dat)[1]
people_sur <- sum(dat[,3])
prop_sur <- people_sur / num_people
