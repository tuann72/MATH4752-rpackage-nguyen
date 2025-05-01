#' Creates a quick plot with steel blue dots
#'
#'
#'@param xVar x-axis variables
#'@param yVar y-axis variables
#'@param title main title
#'@param xlabel x label
#'@param ylabel y label
#'
#'@return returns plot
#'
#'@export
Lab3_quickPlot <- function(xVar, yVar, title, xlabel, ylabel){
  p <-plot(x = xVar, y= yVar, xlim=c(0, 1.1*max(xVar)), ylim=c(0, 1.1*max(yVar)), main = title, xlab=xlabel, ylab=ylabel, pch=21, bg="steelblue", cex=1.2)
  return(p)
}
