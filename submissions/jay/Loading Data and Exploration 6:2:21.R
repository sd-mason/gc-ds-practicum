# Task 1
data <- read.csv("/Users/Jay/Desktop/titanic.csv")
# data2 <- read.csv(file.choose())
# data 3 import from import dataset

rm() # removes data you don't need from environment

# Task 2
str(data)
head(data)

# What caused people to survive/die?
by_sex <- aggregate(data, by = list(data$Sex), FUN = mean)

#More women survived than men. Survival rate female: 0.742 male: 0.189
#People in first class survived at higher rate 0.629, 0.473, 0.242

age_by <- aggregate (Age ~ Sex + Survived + Pclass, FUN = mean, data = data)

by_age <- aggregate(data, by = list(data$Age), FUN = mean)

age_group <- aggregate(Survived ~ Age, FUN = mean, data = data)
children <- age_group[1:24,]
mean(children[,2])

# Average survival rate
# 0-18: 0.625
# 19-29: 0.260
# 30-49: 0.323
# 50-59: 0.387
# 60-80: 0.25

youngadult <- age_group[25:39,] #19-29
mean(youngadult[,2])

adult <- age_group[40:65,] #30-49
mean(adult[,2])

older <- age_group[66:76,] #50-59
mean(older[,2])

senior <- age_group[77:88,] #60-80
mean(senior[,2])

mean(data$Age)
data$Age[data$Age < 18]

Alice_Cleavers_revenge <- data[c(298, 306, 499, 709),]

age_class_sibsp_parch <- aggregate(Survived ~ Age + Pclass + SibSp + Parch, FUN = 
                                     mean, data = data)
poor_with_family <- age_class_sibsp_parch[c(180:201,208:214,216,242:250,276:294,
                                            299:301,328:336,351:352,255:356,360:
                                              377,379:380,382,384:390),]
mean(poor_with_family[,5])
# 0.448

# survival rate class 3: 0.24

# overall survival rate 0.38

#substring()
