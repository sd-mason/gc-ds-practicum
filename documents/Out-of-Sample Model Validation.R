titanic$Pclass <- factor(titanic$Pclass, levels = c("1", "2", "3"))
index <- sample(1:891, 200, replace = F)
train <- titanic[-index, ]
test <- titanic[index, ]

mod <- glm(Survived ~ Age, data = train,
           family = binomial(link = "logit"))
predict(mod, newdata = test, type = "response")

# Writing a validation statistic function
res_sum <- function(preds, obs){
  resids <- obs - preds
  abs_resids <- abs(resids)
  return(sum(abs_resids))
}

res_split <- function(preds, obs){
  output <- numeric(length(preds))
  for(i in 1:length(preds)){
    p <- preds[i]
    if(p < 0.5){
      output[i] <- 0
    } else{
      output[i] <- 1
    }
  }
  return(sum(output == obs))
}

# Jay
jay_train <- train[complete.cases(train$Age), ]
jay_test <- test[complete.cases(test$Age), ]
Fam <- jay_train$SibSp + jay_train$Parch
Fam_test <- jay_test$SibSp + jay_test$Parch
jay_test$Fam <- Fam_test
jay <- glm(Survived ~ Sex*Pclass + Age + Fam,
           data = jay_train, family = binomial(link = "logit"))
jay_preds <- predict(jay, newdata = jay_test, type = "response")
res_sum(jay_preds, jay_test$Survived)
res_split(jay_preds, jay_test$Survived)

# Nathan
train$Pclass <- factor(train$Pclass, levels = c("1", "2", "3"))
nathan <- glm(Survived ~ Sex*Pclass, data = train,
              family = binomial(link = "logit"))
nathan_preds <- predict(nathan, newdata = test, type = "response")
res_sum(nathan_preds, test$Survived)
res_split(nathan_preds, test$Survived)

# Kelby
kelby <- glm(Survived ~ Sex*Parch*Age*Pclass, data = jay_train,
             family = binomial(link = "logit"))
summary(kelby)
kelby_preds <- predict(kelby, newdata = jay_test, type = "response")
res_sum(kelby_preds, jay_test$Survived)
res_split(kelby_preds, jay_test$Survived)

# Sarah
Rel <- (train$SibSp + train$Parch) > 0
Rel_test <- (test$SibSp + test$Parch) > 0
test$Rel <- Rel_test
sarah <- glm(Survived ~ Sex*Rel + Sex*Pclass, data = train,
             family = binomial(link = "logit"))
sarah_preds <- predict(sarah, newdata = test, type = "response")
res_sum(sarah_preds, test$Survived)
res_split(sarah_preds, test$Survived)

# Abraham
abe <- glm(Survived ~ Sex*Age, data = jay_train,
           family = binomial(link = "logit"))
abe_preds <- predict(abe, newdata = jay_test, type = "response")
res_sum(abe_preds, jay_test$Survived)
res_split(abe_preds, jay_test$Survived)

# Josephine
Fam <- train$SibSp + train$Parch
test$Fam <- test$SibSp + test$Parch
jo <- glm(Survived ~ Sex*Fam, data = train,
          family = binomial(link = "logit"))
jo_preds <- predict(jo, newdata = test, type = "response")
res_sum(jo_preds, test$Survived)
res_split(jo_preds, test$Survived)

mod <- glm(Survived ~ Sex, data = train,
           family = binomial(link = "logit"))
mod_preds <- predict(mod, test, type = "response")
res_sum(mod_preds, test$Survived)
res_split(mod_preds, test$Survived)

null <- glm(Survived ~ 1, data = train,
            family = binomial(link = "logit"))
null_preds <- predict(null, newdata = test, type = "response")
res_sum(null_preds, test$Survived)
res_split(null_preds, test$Survived)
