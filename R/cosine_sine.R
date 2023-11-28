#' Calculation for cosine
#'
#' Calculate cos(x)
#'
#' @details This function computes the approximation to the cosine function
#' @param x number, a single number to be calculated
#'
#' @param k integer, an integer larger than 1
#'
#' @return the result of cosine of a number is returned.
#'
#' @export
#'
#' @examples
#' fn_cos(5, 10)

fn_cos <- function(x, k) {
      # check if x is a numeric value
      if ( !is.numeric(x) ){
            stop("x need to be changed to a single numeric value")
      }
      # check if k is an integer
      if ( k != as.integer(k) ) {
            stop("k need to be changed to an integer")
      }
      cos_sum = 0
      for (i in 1:k) {
           cos = (-1)^(i-1)* x^(2*(i-1))/factorial(2*(i-1) )
           cos_sum = cos_sum + cos
      }
      return(cos_sum)
}




