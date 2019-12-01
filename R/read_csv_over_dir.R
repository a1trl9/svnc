
#' @name read_csv_over_dir
#' @title read_csv
#' @param dir_name file_name to load
#' @return list of dataframe of loaded CSV
#' @export
read_csv_over_dir <- function (dir_name) {
  files <- list.files(dir_name, pattern = '*.csv', full.names = TRUE, recursive = FALSE)
  return(lapply(files, function (file) { read_csv(file) }))
}
