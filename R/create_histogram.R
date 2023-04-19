#' Create a histogram of the input data
#'
#' @param x a numeric vector of data values
#' @param num_bins an integer specifying the number of bins to use in the histogram
#' @return a histogram plot of the input data
#'
#' @examples
#' create_histogram(rnorm(100), 10)
#'
#' @export
create_histogram <- function(x, num_bins) {
  bins <- seq(min(x), max(x), length.out = num_bins + 1)
  # draw the histogram with the specified number of bins
  hist(x, breaks = bins, col = 'darkgray', border = 'white')
}
