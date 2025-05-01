#' ntickets
#'calculates the number of tickets to be sold when the number of seats in the flight
#'
#'@param N number of seats
#'@param gamma probability of overbooked
#'@param p probability of a show
#'
#'@return returns discrete and continuous plot
#'
#'@export
ntickets <- function(N, gamma, p){
  n = seq(N, floor(N + N/10), by = 1)

  # Discrete
  discrete = 1 - gamma - pbinom(N, n, p)
  ind = which.min(abs(discrete))

  # Continuous
  f <- function(x){
    1 - gamma - pnorm(q = N + 0.5,  # Continuity correction
                      mean = x * p,
                      sd = sqrt(x * p * (1 - p)))
  }

  indc = stats::uniroot(f, c(N, floor(N + N/10)))

  layout(matrix(1:2, nrow = 2, ncol = 1))

  # Plot Discrete
  plot(x = n, y = discrete,
       xlab = "n", ylab = "Objective",
       main = paste("Objective Vs n to find optimal tickets sold"),
       cex.main = 0.8,
       col = "Blue", pch = 19)
  mtext(paste("(", n[ind], ") gamma=", gamma, " N=", N, " discrete"), cex = 0.8)

  abline(h = discrete[ind], v = n[ind], col = "red")

  # Plot Continuous
  curve(f,
        xlim = c(N,N + floor(N/10)),
        xlab = "n", ylab = "Objective",
        main = paste("Objective Vs n to find optimal tickets sold"),
        cex.main = 0.8
  )
  mtext(paste("(", indc$root, ") gamma=", gamma, " N=", N, " Continuous"), cex = 0.8)

  abline(h = f(indc$root), v = indc$root, col = "steelblue")

  list(nd = n[ind],  # Discrete optimal n
       nc = round(indc$root,4),  # Continuous optimal n
       N = N, gamma = gamma, p = p)
}
