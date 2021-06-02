data <- read.csv("C:\\Users\\Ntale\\Documents\\Data Analytics Practicum Summer 2021\\titanic.csv")

hist(data$Age, 20)
by_sex <- aggregate(data, by = list(data$Sex), FUN = mean)
by_sex

by_class <- aggregate(data, list(data$Pclass), mean)
by_class

age_by <- aggregate(Age ~ Sex + Pclass + Survived + SibSp + Parch, FUN = mean, data)
sibsp_by <- aggregate(SibSp ~ Sex + Pclass + Survived + Age, FUN = mean, data)

# Findings:
# Every woman in Class 1 survived except for one 50 year old woman that was 
# alone, and the Allison mother & daughter - a 97% rate for class 1 women. 
#  
scandal <- data[c(298, 306, 499, 709),]
