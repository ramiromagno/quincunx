#' Extract the count field from a JSON response
#'
#' This function takes a string with a JSON response and returns the value of
#' the count field. If it fails to match the pattern then it returns
#' \code{NA_integer_}.
#'
#' @param json_string a string.
#'
#' @return An integer value.
#'
#' @keywords internal
count <- function(json_string) {

  if(is.null(json_string))
    return(NA_integer_)

  if(identical(json_string, ''))
    return(NA_integer_)

  if(tidyjson::is_json_null(json_string))
    return(NA_integer_)

  count <-
    json_string |>
    tidyjson::spread_values(count = tidyjson::jnumber('count')) |>
    dplyr::pull('count')

  count <- as.integer(count)
  return(count)
}
