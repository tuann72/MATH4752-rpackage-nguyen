#' Creates a plot of residual vs fitted
#'
#'@param dat data table
#'@param x x variable
#'@param y y variable
#'
#'@return returns plot
#'
#'@export

Lab4_fitVsResPlot <- function(dat, x, y){
  # Fitting a linear model
  temp.lm <- with(dat, lm(x~y))

  res <- residuals(temp.lm)
  fit <- fitted(temp.lm)

  #Creating plot
  p <- plot(fit,res)
  return(p)
}
