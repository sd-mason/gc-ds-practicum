str(mtcars)
head(mtcars)

# Data Exploration
cor(mtcars) # correlation matrices do not indicate non-linear relationships
plot(mtcars)


aggregate(cyl ~ vs, data = mtcars, FUN = mean) # numeric vectors with very few
                                               # unique values are often not well
                                               # compared using scatterplots
aggregate(vs ~ am, mtcars, mean)

plot(qsec ~ jitter(am, 0.25), data = mtcars)
boxplot(hp ~ am, data = mtcars)
plot(mtcars$wt, mtcars$hp)

# Layering graphics in base R
palette(c("lightgrey", "skyblue"))
par(mar = c(5, 4, 4, 1), family = "serif")
plot(mpg ~ wt, data = mtcars, type = "n", xlab = "Weight", pch = 20,
     ylab = "Fuel Efficiency", main = "Fuel Efficiency by Weight & Transmission Type")
points(x = mtcars$wt, y = mtcars$mpg, col = as.factor(mtcars$am), pch = 20)
legend("topright", legend= c("Automatic", "Manual"), pch = 20, col = 1:2)
abline(reg = lm(mpg ~ wt, data = mtcars, subset = mtcars$am == 0), lwd = 2,
       col = 1)
abline(reg = lm(mpg ~ wt, data = mtcars, subset = mtcars$am == 1), lwd = 2,
       col = 2)
