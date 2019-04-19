library(tidyverse)
library(rlang)


name <- "Jane"
list2(!!name := 1 + 2)
exprs(!!name := 1 + 2)
quos(!!name := 1 + 2)

var <- 10

rlang::expr(mean(!!var * 100))
# mean(10 * 100)

rlang::expr(mean(!!!var * 100))
# mean(1000)


mtcars <- mtcars

my_function <- function(data, arg) {
  summarise(data, avg = mean({{ arg }}, na.rm = TRUE))
}

my_function(mtcars, cyl)
my_function(mtcars, cyl * 10)

# The  operator is just a shortcut for `!!enquo()`:
my_function <- function(data, arg) {
  summarise(data, avg = mean(!!enquo(arg), na.rm = TRUE))
}

my_function(mtcars, cyl)

