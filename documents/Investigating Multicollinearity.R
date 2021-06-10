# Investigating Multicollinearity

# Fitting a model with a single continuous predictor
mod1 <- glm(y ~ x, family = binomial(link = "logit"))
summary(mod1)

# Creating a collinear predictor
m <- rnorm(1000, mean = x, sd = 0.7)
cor(x, m)

# Fitting a model with two collinear predictors
mod2 <- glm(y ~ x + m, family = binomial(link = "logit"))
summary(mod2)

# Calculating the variance inflation factor by hand
## Regressing x as a function of m
mod3 <- lm(x ~ m)
mod5 <- lm(m ~ x + z)

## Extracting the R-squared value
mod3_sum <- summary(mod3)
Rsq <- mod3_sum$r.squared

## Calculating VIF
VIF <- 1/(1-Rsq)

## Using the car::vif() function
### install.packages("car")
library(car)
vif(mod2)

# Why can't we just look at Pearson correlation coefficients?
z <- rnorm(1000, mean = 0, sd = 1)
m <- rnorm(1000, mean = x + z, sd = 0.5) # m not highly correlated with any 
                                          # single other predictor, only with
                                          # the combination of other predictors
cor(cbind(x, z, m))
mod4 <- glm(y ~ x + z + m, family = binomial(link = "logit"))
vif(mod4)
