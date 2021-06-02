#Abraham
#June 2
#Titanic dataset

data <- read.csv(file = "C:\\Users\\mossf\\OneDrive\\OD DSSP R\\titanic.csv")
data2 <-1 # read.csv(file.choose())
rm(data2)
data <- data[,2:13]
class(data[4,9])
#for (i in 1:12) {
#  tryCatch({
#    hist(data[,i])
#    Sys.sleep(5)
#  }, error=function(e){cat("ERROR :",conditionMessage(e), "\n")})
#}
str(data$Ticket)
head(data$Fare)
hist(data$Fare, breaks = 75)

summary(data)
plot(data$Survived ~ data$Ticket, type = "p") 
firstC <- subset(data$Pclass, data$Pclass == 1 & data$Survived == 1)
secondC <- subset(data$Pclass, data$Pclass == 2 & data$Survived == 1)
thirdC <- subset(data$Pclass, data$Pclass == 3 & data$Survived == 1)
length(firstC) /length(subset(data$Pclass, data$Pclass == 1))
length(secondC) / length(subset(data$Pclass, data$Pclass == 2))
length(thirdC) /length(subset(data$Pclass, data$Pclass == 3))


aCab_s <- subset(data$Cabin, substring(data$Cabin,1,1) == "A" & data$Survived == 1)
bCab_s <- subset(data$Cabin, substring(data$Cabin,1,1) == "B" & data$Survived == 1)
cCab_s <- subset(data$Cabin, substring(data$Cabin,1,1) == "C" & data$Survived == 1)
dCab_s <- subset(data$Cabin, substring(data$Cabin,1,1) == "D" & data$Survived == 1)
eCab_s <- subset(data$Cabin, substring(data$Cabin,1,1) == "E" & data$Survived == 1)
fCab_s <- subset(data$Cabin, substring(data$Cabin,1,1) == "F" & data$Survived == 1)
gCab_s <- subset(data$Cabin, substring(data$Cabin,1,1) == "G" & data$Survived == 1)
print(c(length(aCab_s) / length(subset(data$Cabin, substring(data$Cabin, 1, 1) == "A")), length(aCab_s)))
print(c(length(bCab_s) / length(subset(data$Cabin, substring(data$Cabin, 1, 1) == "B")), length(bCab_s)))
print(c(length(cCab_s) / length(subset(data$Cabin, substring(data$Cabin, 1, 1) == "C")), length(cCab_s)))
print(c(length(dCab_s) / length(subset(data$Cabin, substring(data$Cabin, 1, 1) == "D")), length(dCab_s)))
print(c(length(eCab_s) / length(subset(data$Cabin, substring(data$Cabin, 1, 1) == "E")), length(eCab_s)))
print(c(length(fCab_s) / length(subset(data$Cabin, substring(data$Cabin, 1, 1) == "F")), length(fCab_s)))
print(c(length(gCab_s) / length(subset(data$Cabin, substring(data$Cabin, 1, 1) == "G")), length(gCab_s)))
(!data$Survived == 1)[1:5]
(data$Survived == 1)[1:5]
374/(163+374)
175/(179+175)
length(which(data$Cabin == ""))
891-687
15+47+59+33+32+13+4
substring(data$Cabin,1,1) != "A" & substring(data$Cabin,1,1) != "B" & substring(data$Cabin,1,1) != "C" & substring(data$Cabin,1,1) != "D" & substring(data$Cabin,1,1) != "E" & substring(data$Cabin,1,1) != "F" & substring(data$Cabin,1,1) != "G" & substring(data$Cabin,1,1) != ""

#204 in cabins
#687 not in cabins
#891 total

#ABCD mostly first class
#EFG 2nd, 3rd. The lower, the higher chance of being in 3rd.
#I found this from looking at the data, not code.
#Not in a cabin? 30% lived. 206 out of 687 survived.
#Most people not in cabins were 3rd class.



#A 46.7%, 7 survived, 15 total
#B 74.4%, 35 survived, 47 total
#C 59.3%, 35 survived, 59 total
#D 75.8%, 25 survived, 33 totoal
#E 75%, 24 survived, 32 total
#F 61.5%, 8 survived, 13 total
#G 50%, 2, survived, 4 total

abce <- substring(data$Cabin,1,1) == "A" | substring(data$Cabin,1,1) == "B"| substring(data$Cabin,1,1) == "C" | substring(data$Cabin,1,1) == "E"
length(which(abce))
length(which(abce & data$Pclass == 1))
length(which(data$Cabin == "" & data$Survived==1))
