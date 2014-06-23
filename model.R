data(mtcars);
for (i in c('am', 'carb', 'cyl', 'gear', 'vs') ) {
  mtcars[[i]] <- factor(mtcars[[i]]);
}

model <- lm( mpg ~ wt + cyl + hp + am + wt:am, data = mtcars )

modelPredict <- function(wt, cyl, hp, am) {
  dt <- data.frame(
    wt = c(wt / 1000),
    cyl = c(toString(cyl)), 
    hp = c(hp),
    am = c(toString(am))
  );
  mpg <- predict(model, dt)
  return (round(mpg, 3))
}
