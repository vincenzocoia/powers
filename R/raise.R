#' Apply a generic power
#'
#' This function raises a vector or a list of numbers
#' to any power.
#'
#' @param x Vector or list of numbers.
#' @param to Power to raise \code{x} by.
#'
#' @export
#'
#' @return A vector (atomic, double) of the input
#' raised to the specified power.
#'
#' @examples
#' raise(1:4, to = 2)
#' raise(2, to = 1:4)
#' raise(as.list(1:4), to = 2)
raise <- function(x, to) {
    if (is.numeric(x) && is.numeric(to)) {
        return(x ^ to)
    }
    if (is.list(x) || is.list(to)) {
        return(purrr::map2_dbl(x, to, `^`))
    }
    stop("Expecting input `x` and `to` to be numeric or a list of single numerics,",
         " but `x` is of class ", class(x)[1],
         " and `to` is of class ", class(to)[1])
}
