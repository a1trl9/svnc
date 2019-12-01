#' @name transform_df_to_vec
#' @title transform_df_to_vec
#' @param df dataframe, source of plot
#' @param x key to get samples and build vector
#' @return vector of target variable
#' @export
transform_df_to_vec <- function(df, key) {
  vec <- df[, key]
  if (is.factor(vec)) {
    vec <- as.character(vec)
  }
  return(vec)
}
