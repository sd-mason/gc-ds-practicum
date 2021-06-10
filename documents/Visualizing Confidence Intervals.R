# Visualizing Confidence Intervals

# CI simulation function
cisim <- function(n = 100, mu = 0, sd = 1, sims = 100){
  # Drawing sims number of random samples from a normal distribution
  draws <- matrix(data = rnorm(n*sims, mu, sd), ncol = n, nrow = sims)
  
  # Calculating the mean for all draws
  x_bar <- apply(draws, MARGIN = 1, FUN = mean)
  
  # Calculating the standard deviation for all draws
  s <- apply(draws, MARGIN = 1, FUN = sd)
  
  # Calculating the lower 95% CI limit
  lcl <- x_bar - (1.960*(s/sqrt(100)))
  
  # Calculating the upper 95% CI limit
  ucl <- x_bar + (1.960*(s/sqrt(100)))
  
  # Returning a matrix containing both limits
  return(cbind(lcl, ucl))
}

ci <- cisim()

# Plotting the CIs
par(mar = c(3, 1, 1, 1))
plot.new()
plot.window(xlim = c(-0.5, 0.5), ylim = c(1, 100))
axis(side = 1, pos = 0, at = seq(-0.5, 0.5, 0.1))
for(i in 1:100){
  if(0 > ci[i, 1] & 0 < ci[i, 2]){
    lines(x = c(ci[i, 1], ci[i, 2]), y = c(i, i), col = "lightgray")
  } else{
    lines(x = c(ci[i, 1], ci[i, 2]), y = c(i, i), col = "red")
  }
}
abline(v = 0, lwd = 2, col = "black")



