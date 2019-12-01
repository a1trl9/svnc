#' @name report_norm
#' @title report_norm
#' @param df dataframe, source of plot
#' @param key to get samples from dataframe and check normality
#' @return None
#' @export
report_norm = function(df, key) {
    vec <- transform_df_to_vec(df, key)
    print(shapiro.test(vec))
}
