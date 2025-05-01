#' Creates a density plot using dnorm given a mean and standard deviation.w
#' It finds the probabilty from -inf to a
#'
#'@param mu mean
#'@param sigma standard deviation
#'@param a -inf to a
#'
#'@return returns density plot with the area colored and prints out probability
#'
#'@export

Lab6_myncurve = function(mu=10, sigma=5, a=6){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma))
  list(mu = mu, sigma = sigma)

  xcur <- seq(mu-3*sigma, a, length=1000)
  ycur <- dnorm(xcur, mu, sigma)

  polygon(c(-10, xcur, a), c(0,ycur,0), col="steelblue")
  prob <- round(pnorm(a, mu, sigma),4)

  text(x=a,y=0.5*dnorm(a,mu,sigma), paste0("Area = ", prob))

  print(paste0("MU: ", mu, " | Sigma: ", sigma, " | a:",a))
  print(paste0("Probability: ", prob))

  return(prob)
}
