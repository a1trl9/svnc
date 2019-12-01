#' @name plot_tmp_line
#' @title plot_tmp_line
#' @param df dataframe, source of plot
#' @param x_value column key used for x-axis
#' @param y_value column key used for y-axis
#' @param color_value column key used for group and color
#' @return None
#' @export
plot_tmp_line <- function(df, x_value, y_value, color_value, end_value) {
  print(color_value)
  print(y_value)
  ggplot(df, aes_string(x=x_value, y=y_value, color=color_value)) + geom_line() +  geom_point() + geom_text(size = 2.5, hjust = 1.5, data = subset(df, eval(parse(text=paste(x_value, '==', end_value)))), aes_string(label =  color_value, colour = color_value, x = Inf, y = y_value))
}
