#' @name combine_column_from_dfs
#' @title combine_column_from_dfs
#' @param dfs list of dataframes
#' @param key to extract column from df
#' @return Vector of combined values of the column
#' @export
combine_column_from_dfs <- function(dfs, key) {
  column <- c();
  for (df in dfs) {
    column <- c(column, transform_df_to_vec(df, key))
  }
  return(column)
}
