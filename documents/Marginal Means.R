# Making Better Inference from Categorical Predictors

## The emmeans package
install.packages("emmeans")
install.packages("ggplot2")
library(emmeans)
library(ggplot2)

## Loading in a college admission dataset
admit <- read.csv("/Users/sam/Desktop/admission.csv")
admit <- admit[, -1]

## Converting admission information to a binary response
admit$Admit[admit$Admit == "Admitted"] <- 1
admit$Admit[admit$Admit == "Rejected"] <- 0
admit$Admit <- as.numeric(admit$Admit)

## Running models
mod1 <- glm(Admit ~ Gender, data = admit, family = binomial(link = "logit"))
summary(mod1)
emmeans(mod1, specs = c("Gender"), type = "response")
plot(emmeans(mod1, specs = c("Gender"), type = "response"))

mod2 <- glm(Admit ~ Dept, data = admit, family = binomial(link = "logit"))
summary(mod2)
emmeans(mod2, specs = c("Dept"), type = "response")
plot(emmeans(mod2, specs = c("Dept"), type = "response"))

mod3 <- glm(Admit ~ Gender*Dept, data = admit, family = binomial(link = "logit"))
summary(mod3)
emmeans(mod3, specs = c("Gender"), type = "response")
emmeans(mod3, specs = c("Gender"), by = c("Dept"), type = "response")
plot(emmeans(mod3, specs = c("Gender"), by = c("Dept"), type = "response"))

## Why do females overall have a lower admission probability?
cont_tab <- as.data.frame(table(admit))
agg <- aggregate(cont_tab$Freq, by = list(cont_tab$Gender, cont_tab$Dept),
                 FUN = sum)
barplot(x ~ Group.1 + Group.2, data = agg, beside = T,
        col = c("black", "darkgray"))
legend("topright", legend = c("Female", "Male"), pch = 15,
       col = c("black", "darkgray"), bty = "n", cex = 1.5)
