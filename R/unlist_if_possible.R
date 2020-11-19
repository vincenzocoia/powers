#' Flatten a properly formatted list
#'
#' If a list contains numeric singletons, flattens the list.
#'
#' @param x List to flatten
#'
#' @return A flattened list, or an error if the list does
#' not contain only numeric singletons.
#'
#' @noRd
#'
#' @examples
#' unlist_if_possible(list(1, 4, 5))
unlist_if_possible <- function(x) {
    input_code <- rlang::enexpr(x)
    if (rlang::is_symbol(input_code)) {
        var_name <- paste0("`", as.character(input_code), "` ")
    } else {
        var_name <- ""
    }
    if (!is_list_numeric_singletons(x)) {
        stop("List input ", var_name, "should contain numeric singletons only.")
    }
    unlist(x)
}


#' Check if a list contains numeric singletons
#'
#' Internal function.
#'
#' @param x List to investigate
#'
#' @return Single logical; \code{TRUE} if all list entries are numeric
#' vectors of length 1.
#'
#' @noRd
#'
#' @examples
#' is_list_numeric_singletons(list(1, 4, 5))
#' is_list_numeric_singletons(list(1:4, 5))
#' is_list_numeric_singletons(list("hello"))
is_list_numeric_singletons <- function(x) {
    is_numeric <- purrr::map_lgl(x, is.numeric)
    is_length_1 <- purrr::map_int(x, length) == 1L
    all(is_numeric & is_length_1)
}
