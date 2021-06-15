mkitems <- read.csv(file.choose())
mkitems[is.na(mkitems)] <- 0

mkitems[, 2:24][mkitems != "1"] <- 0
colnames(mkitems) <- mkitems[1, ]

colSums(mkitems)

mkitems <- mkitems[, -1][, (colSums(mkitems) != 0)]

trials <- aggregate(Banana ~ Position, data = mkitems, FUN = length)
successes <- aggregate(mkitems[, -1], by = list(mkitems$Position), FUN = sum)
mkitems_agg <- as.data.frame(cbind(trials, successes[, -1]))

colnames(mkitems_agg)[2] <- "Trials"
Fails <- mkitems_agg$Trials-mkitems_agg$Mushroom
Ratio <- mkitems_agg$Mushroom/mkitems_agg$Trials
mod_banana <- glm(cbind(Banana, Fails) ~ as.numeric(Position),
                  data = mkitems_agg, family = binomial(link = "logit"))
plot(x = 1:12, y = Ratio)
lines(predict(mod_mush, type = "response"))
summary(mod_mush)
plot(mod_mush)

pos_quad <- (1:12)^2

mod_mush <- glm(cbind(Mushroom, Fails) ~ as.numeric(Position) + pos_quad,
                data = mkitems_agg, family = binomial(link = "logit"))
plot(mod_mush)
