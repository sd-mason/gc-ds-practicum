# Model Comparison Using AIC

# Loading in the data
bronch <- read.csv("/Users/sam/Desktop/bronch.csv")
bronch$smoke <- as.factor(bronch$smoke)

# Fitting some models
null <- glm(bronch ~ 1, data = bronch, family = binomial(link = "logit"))
mod1 <- glm(bronch ~ dust, data = bronch, family = binomial(link = "logit"))
mod2 <- glm(bronch ~ dust*years, data = bronch, family = binomial(link = "logit"))
mod3 <- glm(bronch ~ smoke, data = bronch, family = binomial(link = "logit"))
mod4 <- glm(bronch ~ smoke*dust, data = bronch, family = binomial(link = "logit"))

summary(null)
summary(mod1)
summary(mod2)
summary(mod3)
summary(mod4)

# Calculating AIC by hand
## Step 1: Extract the fitted probabilities of disease
p <- mod1$fitted.values

## Step 2: Calculate the likelihood of observing the y data given the model
l <- prod(dbinom(bronch$bronch, 1, p)) # just crazy small given large n

## Step 3: Calculate the log-likelihood
ll <- log(l)

## Step 4: Plug log-likelihood into AIC formula
AIC <- -2*ll + 2*2 # the number of parameters is 2 (the intercept and the slope)

# Using the built-in AIC function
aic_tab <- AIC(null, mod1, mod2, mod3, mod4)
aic_tab[order(aic_tab$AIC), ]

# Plotting the mod1 interaction
## Creating a new, high-resolution data frame to predict on
new_bronch <- data.frame(dust = rep(seq(min(bronch$dust), max(bronch$dust), 0.1), 6),
                         years = c(rep(10, 239), rep(20, 239), rep(30, 239),
                                   rep(40, 239), rep(50, 239), rep(60, 239)))
preds <- predict(mod2, newdata = new_bronch, type = "response")
plot(bronch ~ dust, data = bronch, pch = 19,
     main = "Dust by Year Interaction Model",
     xlab = "Dust Concentration",
     ylab = "Probability of Disease")
lines(x = new_bronch$dust[1:239], y = preds[new_bronch$years == 10], lwd = 2,
      col = "gray90")
lines(x = new_bronch$dust[1:239], y = preds[new_bronch$years == 20], lwd = 2,
      col = "gray80")
lines(x = new_bronch$dust[1:239], y = preds[new_bronch$years == 30], lwd = 2,
      col = "gray70")
lines(x = new_bronch$dust[1:239], y = preds[new_bronch$years == 40], lwd = 2,
      col = "gray60")
lines(x = new_bronch$dust[1:239], y = preds[new_bronch$years == 50], lwd = 2,
      col = "gray50")
lines(x = new_bronch$dust[1:239], y = preds[new_bronch$years == 60], lwd = 2,
      col = "gray40")
