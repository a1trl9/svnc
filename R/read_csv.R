
#' @name read_csv
#' @title read_csv
#' @param file_name file_name to load
#' @param prefix prefix for file path
#' @return dataframe of loaded CSV
#' @export
read_csv <- function (file_name, prefix = '') {
  print(paste(prefix, file_name, sep = ''))
  return(read.csv(paste(prefix, file_name, sep = ''), header = TRUE, fileEncoding = 'UTF-16'))
}
