#' Create a boxplot
#'
#'
#'@param values Expects a vector of values.
#'
#'@return Boxplot
#'@export
Lab1_quickBox <- function(values){

  b <- boxplot(values,col="Red")

  return(b)
}
