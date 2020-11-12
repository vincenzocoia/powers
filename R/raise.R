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
pow <- function(x, to) {
    purrr::map2_dbl(x, to, `^`)
}
