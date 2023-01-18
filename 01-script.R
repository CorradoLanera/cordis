# setup -----------------------------------------------------------
#+ message = FALSE
library(tidyverse)
library(testthat)
library(here)


# execution -------------------------------------------------------

dbs_paths <- here("data-raw") |>
  list.files("^cordis.*\\.csv$", full.names = TRUE)

#+ message = FALSE
res <- dbs_paths |>
  map(read_csv2, show_col_types = FALSE) |>
  bind_rows()

# tests -----------------------------------------------------------

with_reporter(check_reporter(), {

  context("cordis merging")

  test_that("correct number of files", {
    expect_length(dbs_paths, 44L)
  })

  test_that("correct number of records", {
    expect_equal(nrow(res), 2164L)
  })
})


# output ----------------------------------------------------------

if (interactive()) {
  res |>
    write_csv2(here("output/res.csv"))
}


