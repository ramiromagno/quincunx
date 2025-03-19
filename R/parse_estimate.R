parse_estimate <- function(tbl_json) {
  tbl_json$..JSON |>
    purrr::map("estimate") |>
    purrr::map(~ ifelse(is.null(.x), NA_character_, .x)) |>
    as.character() |>
    readr::parse_number(na = c("", "NA", "NR"))
}
