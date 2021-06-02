#Titantic Exercise 
#Kelby Cox 6/1/21


#Task 1
that <- read.csv("C:\\Users\\Kelby\\Downloads\\titanic.csv")
View(that)

#Task 2
str(that)
head(that)

#Research:
#Looking first at the age average compared to sex, survival, and class
age_mean <- aggregate(Age ~ Sex + Survived + Pclass, FUN = mean,data = that)
#Found: for men and women in 1st class, if age is more in the middle, that there
#were higher chances of surviving as opposed to younger(w) or older(m)
#Second class was the opposite except that much younger people had better 
#chances of surviving. Same is basically true for third class.

#Looking at the fare average against the sex, survival, and class
Fare_mean <- aggregate(Fare ~ Sex + Survived + Pclass, FUN = mean,data = that)
#Found: first, that family fares are grouped together, thus probably helping 
#the larger gap bw the average women's and men's fare.Thus, this interfers with 
#a more common modern expectation of the meaning of this particular data.
#However, oddly enough, the women in 1st and 3rd class had a slightly better 
#chance of surviving if they paid slightly less while the men in those classes
#had better chances if they were paying slightly more. The 2nd class had those
#paying slight more surviving slightly more as well for both genders.

#Looking at sibling and spouse category against sex, survival, and class
sib_mean <- aggregate(SibSp ~ Sex + Survived + Pclass, FUN = mean,data = that)
#Found: Overall, looking at this category and the next, the ver strong trend
#is that having any sort of family on board with you increased your chances of
#surviving incredibly. According to some of our calutations, it might even
#double your chances of survival! This actually does make sense as there would 
#be more people watching out for you and making sure that you were  getting to 
#safety, etc.

#Looking at parent and child category against sex, survival, and class
Parch_mean <- aggregate(Parch ~ Sex + Survived + Pclass, FUN = mean,data = that)

#scratch work:
Age_groups <- aggregate(Survived ~ Age, FUN = mean, data = that)
Age_group_mean <- mean(Age_groups[1:25,1])
View(Age_group_mean)

#Fare question: looks like children fare was grouped together
#First class survived at a higher rate, but had less siblings or children 
#on board, family trend of increase in survival if any family
#Finding: 1.74 survival rate for men, 1.89 rate for women