#' Calculation for sine
#'
#' Calculate sin(x)
#'
#' @details This function computes the approximation to the sine function
#' @param x number, a single number to be calculated
#'
#' @param k integer, an integer larger than 1
#'
#' @return the result of sine of a number is returned.
#'
#' @export
#'
#' @examples
#' fn_sin(5, 10)

fn_sin <- function(x, k) {
      # check if x is a numeric value
      if ( !is.numeric(x) ){
            stop("x need to be changed to a single number")
      }
      # check if k is an integer
      if ( k != as.integer(k) ) {
            stop("k need to be changed to an integer")
      }
      sin_sum = 0
      for (i in 1:k) {
            sin = (-1)^(i-1)* x^(2*(i-1) + 1)/factorial(2*(i-1) + 1)
            sin_sum = sin_sum + sin
      }
      return(sin_sum)
}
