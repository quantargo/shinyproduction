# Test case 1: Check that the function produces a histogram object
test_that("create_histogram returns a histogram object", {
  x <- rnorm(100)
  num_bins <- 10
  hist_obj <- create_histogram(x, num_bins)
  expect_true(is(hist_obj, "histogram"))
})

# Test case 2: Check that the number of bins in the histogram is correct
test_that("create_histogram produces a histogram with the correct number of bins", {
  x <- rnorm(100)
  num_bins <- 10
  hist_obj <- create_histogram(x, num_bins)
  expect_equal(length(hist_obj$breaks), num_bins + 1)
})

# Test case 3: Check that the histogram shows the correct data range
test_that("create_histogram produces a histogram that shows the correct data range", {
  x <- rnorm(100)
  num_bins <- 10
  hist_obj <- create_histogram(x, num_bins)
  expect_equal(range(hist_obj$breaks), range(x))
})