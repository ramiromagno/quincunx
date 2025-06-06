#' @importFrom rlang .data
unwrap_publication <- function(tbl_json) {

  tbl_json |>
    tidyjson::spread_values(
      pgp_id = tidyjson::jstring('id'),
      pubmed_id = tidyjson::jinteger('PMID'),
      publication_date = tidyjson::jstring('date_publication'),
      publication = tidyjson::jstring('journal'),
      title = tidyjson::jstring('title'),
      author_fullname = tidyjson::jstring('firstauthor'),
      doi = tidyjson::jstring('doi')
    ) |>
    dplyr::mutate(
      # pubmed_id = as.character(.data$pubmed_id),
      publication_date = lubridate::ymd(nr_to_na(.data$publication_date)),
    ) |>
    tidyjson::as_tibble()
}
