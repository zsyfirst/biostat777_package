#' constructor
#'
#' make a constructor for ci_class object
#'
#' @details This function creates a constructor function for ci_class
#' @param x vector, a vector of numbers of length N.
#'
#' @param conf number, a number of confidence interval, ranged from 0 to 1, the default is 0.95
#'
#' @return returns an object of class "ci_class"
#'
#' @export make_ci_class
#'
#'


# constructor

make_ci_class <- function(x, conf = 0.95) {
      if (!is.numeric(x)) {
            stop("Input x must be a numeric vector.")
      }
      structure( list(data = x, conf = conf), class = "ci_class")
}

## Print method for ci_class objects
## x an object of class "ci_class"
#' @export
#' @method print ci_class
print.ci_class <- function(obj, ...) {
      cat("the confidence intervl is", length(obj$data),
          "observations\n")
      invisible(obj)
}


## object an object of class "ci_class"
summary.ci_class <- function(obj, ...) {
      cat("Summary of ci_class object:\n")
      cat("Data range:", range(obj$data), "\n")
      cat("Confidence Level:", obj$conf, "\n")
      invisible(obj)
}

