#' Apply a useful power
#'
#' Square, cube, or take the reciprocal/inverse
#' of a vector OR a list of numbers.
#'
#' @param x Vector or list of numbers
#' @param plot_it Display a plot of \code{x} vs the output? Use logical.
#' \code{FALSE} by default.
#'
#' @return
#' A vector that is the:
#' \itemize{
#'      \item square (for \code{square})
#'      \item cube (for \code{cube})
#'      \item reciprocal/inverse (for \code{reciprocal})
#' }
#'  of \code{x}.
#'
#' @details
#' If you really want to see more, check out the internal \code{\link{pow}}
#' function that these functions depend on.
#' @examples
#' cube(tenvec)
#' square(-5)
#' reciprocal(2)
#' @rdname square
#' @export
square <- function(x, plot_it=FALSE) pow(x, a=2, plot_it=plot_it)



