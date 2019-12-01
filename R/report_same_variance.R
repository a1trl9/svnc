#' @name report_same_variance
#' @title report_same_variance
#' @param df dataframe, source of plot
#' @param x key to group samples and compare variance
#' @param y target variable when checking variance equality
#' @return None
#' @export
report_same_variance <- function(data, x, y) {
  f <- as.formula(paste(y, '~', x, sep = ''))
  var_1 <- bartlett.test(f, data = data)
  print(var_1)
}
