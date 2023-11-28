#' Calculation for sample
#'
#' Calculate confidence intervals
#'
#' @details This function computes the confidence intervals for a numeric vector
#' @param x vector, a vector of numbers of length N.
#'
#' @param conf number, a number of confidence interval, ranged from 0 to 1, the default is 0.95
#'
#' @return returns a named vector of length 2, where the first value is the lower_bound, the second value is the upper_bound.
#'
#' @export calculate_CI
#'
#' @examples
#' calculate_CI(rnorm(10,2,1))
#' calculate_CI(rnorm(10,2,1), 0.90)
#' calculate_CI(c(rnorm(10,2,1),Na), 0.95 )

calculate_CI <- function(obj, conf = 0.95) {
      if (!is.numeric(obj) && !inherits(obj, "ci_class")) {
            stop("Input must be numeric or of class 'ci_class'")
      }
      UseMethod("calculate_CI") }

#' @export
#' @method calculate_CI numeric



calculate_CI.numeric <- function(x, conf = 0.95) {
      # if (!is.numeric(x)) {
      #       stop("Input x must be a numeric vector.")
      # }
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

      alpha <- 1-conf
      t_score = qt(1-alpha/2,df = n-1, lower.tail = T )
      lower_bound = mean - t_score*sample_sd/sqrt(n)
      upper_bound = mean + t_score*sample_sd/sqrt(n)
      CI <-  c("lower_bound" = lower_bound, "upper_bound" = upper_bound)
      return( CI )
}


#' @export
#' @method calculate_CI ci_class

## calculate_CI function
calculate_CI.ci_class <- function(obj, conf = 0.95) {
      # if (!inherits(obj, "ci_class")) {
      #       stop("Object must be of class 'ci_class'.")
      # }

      x <- obj$data
      conf = obj$conf
      n <- length(x)
      if (n <= 1) {
            stop("Insufficient data to calculate confidence interval.")
      }

      mean_value = mean(x)
      sample_sd = sd(x)
      alpha <- 1-conf
      t_score = qt(1-alpha/2,df = n-1, lower.tail = T )
      lower_bound = mean_value - t_score*sample_sd/sqrt(n)
      upper_bound = mean_value + t_score*sample_sd/sqrt(n)
      CI <-  c("lower_bound" = lower_bound, "upper_bound" = upper_bound)
      return( CI )
}





