#' @name report_lm
#' @title report_lm
#' @param df dataframe, source of plot
#' @param x key of independent variable
#' @param y key of dependent variable
#' @return None
#' @export
report_lm <- function(data, x, y) {
  cat('\n')
  f <- as.formula(paste(y, '~', x, sep = ''))
  rep <- lm(f, data = data)
  cat('\n')
  print(summary(rep))
}
