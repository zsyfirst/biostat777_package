#' Sample Standard deviation
#'
#' Internal function to calculate the sample standard deviation.
#'
#' @param x vector, a vector of numbers of length N.
#' @return returns the standard deviation of the vector.
#' @examples
#' sample_sd(c(1:10))
#'

sample_sd <- function(x) {
      total = 0
      n <- length(x)
      for (i in 1:n) {
            total = total + x[i]
      }
      mean = total/n
      variance = 0
      for ( j in 1:n) {
            variance = variance + (x[j]-mean)^2
      }
      sample_sd = sqrt(variance/(n-1))
      return(sample_sd)
}
