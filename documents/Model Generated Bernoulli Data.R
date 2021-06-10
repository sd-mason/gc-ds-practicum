# Generating a Bernoulli Response from a Linked Linear Predictor

## Defining beta coefficients
b0 <- 1
b1 <- -0.75

## Generating a random continuous predictor
set.seed(1)
x <- rnorm(1000, mean = 0, sd = 1)

## Creating the unlinked linear predictor
lp <- b0 + b1*x

## Applying the inverse logit function to produce p values
invlogit <- function(lp){
  return(exp(lp)/(1+exp(lp)))
}
invlp <- invlogit(lp)

## Drawing observations from random variables
### By way of a for loop
ptm <- proc.time()
y <- numeric(1000)
for(i in 1:1000){
  y[i] <- rbinom(1, 1, invlp[i])
}
proc.time() - ptm
### By way of the lapply function
ptm <- proc.time()
y <- unlist(lapply(invlp, FUN = function(x){return(rbinom(1, 1, x))}))


