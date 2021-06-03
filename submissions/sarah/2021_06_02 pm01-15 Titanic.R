dat <- read.csv("C:\\Users\\sarah\\OneDrive\\Desktop\\Schoolwork summer 2021\\Lecture\\2021_06_02 titanic


parch_yes <- dat$Parch > 0
SibSp_yes <- dat$SibSp > 0
relatives_yes <- parch_yes & SibSp_yes

summary(relatives_yes_survived)
   Mode   FALSE    TRUE 
logical     749     142 
> relatives_yes_survived <- Relatives_yes & !dat$Survived
> summary(relatives_yes_survived)
   Mode   FALSE    TRUE 
logical     716     175 
> relatives_yes_survived <- !Relatives_yes & dat$Survived
> summary(relatives_yes_survived)
   Mode   FALSE    TRUE 
logical     728     163 
> relatives_yes_survived <- !Relatives_yes & !dat$Survived
> summary(relatives_yes_survived)
   Mode   FALSE    TRUE 
logical     517     374 


