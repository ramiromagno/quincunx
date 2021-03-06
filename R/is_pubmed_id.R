#' Is a string a PubMed ID?
#'
#' Find which strings are valid PubMed IDs (returns \code{TRUE}). PubMed IDs are
#' tested against the following regular expression: \code{^\\\\d+$}.
#'
#' @param str A character vector of strings.
#' @param convert_NA_to_FALSE Whether to treat \code{NA} as \code{NA}
#'   (\code{convert_NA_to_FALSE = FALSE}) or whether to return \code{FALSE} when
#'   an \code{NA} is found (\code{convert_NA_to_FALSE = TRUE}).
#' @return A logical vector.
#' @keywords internal
is_pubmed_id <- function(str, convert_NA_to_FALSE = TRUE) {

  if (!is.character(str))
    stop("str argument must be a character vector.")

  if (identical(length(str), 0L))
    stop("str contains no values, it must contain at least one string.")

  # Replace NA with "".
  if (convert_NA_to_FALSE) {
    str2 <- str
    str2[is.na(str)] <- ""
  } else {
    str2 <- str
  }

  is_pubmed_id <- stringr::str_detect(str2, "^\\d+$")

  return(is_pubmed_id)
}
