#' Performs finds z score
#'
#'
#'@param values Expects a vector of values
#'
#'@return z-score vector
#'
#'@export
Lab2_zScore <- function(values){

  z <- (values - mean(values))/sd(values)

  return(z)
}
