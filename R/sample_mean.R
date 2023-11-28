#' Sample Mean
#'
#' Internal function to calculate the sample mean.
#'
#' @param x vector, a vector of numbers of length N.
#' @return returns the mean of the vector.
#' @examples
#' sample_mean(c(1:10))
#'
sample_mean <- function(x) {
      total = 0
      n <- length(x)
      for (i in 1:n){
            total = total + x[i]
      }
      mean = total/n
      return(mean)
}
