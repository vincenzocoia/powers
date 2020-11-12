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
    if (is.list(x)) {
        x <- unlist_if_possible(x)
    }
    if (is.list(to)) {
        to <- unlist_if_possible(to)
    }
    if (!is.numeric(x)) {
        stop("Expecting input `x` to be numeric, but received an object of class",
             class(x)[1])
    }
    if (!is.numeric(to)) {
        stop("Expecting input `to` to be numeric, but received an object of class",
             class(to)[1])
    }
    x ^ to
}
