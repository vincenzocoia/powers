#' Apply a useful power
#'
#' Square, cube, or take the reciprocal/inverse
#' of a vector OR a list of numbers.
#'
#' @param x Vector or list of numbers.
#'
#' @return
#' A vector (atomic, double) that is the:
#' \itemize{
#'      \item square (for \code{square})
#'      \item cube (for \code{cube})
#'      \item reciprocal/inverse (for \code{reciprocal})
#' }
#' of \code{x}.
#'
#' @details
#' If you really want to see more, check out the internal \code{\link{pow}}
#' function that these functions depend on.
#' @examples
#' cube(tenvec)
#' square(-5)
#' reciprocal(2)
#' square(list(1, 4, 5))
#' @rdname convenience
#' @export
square <- function(x) {
    raise(x, to = 2)
}



