test_that("This is an example test", {
  a <- 2
  b <- 10
  expect_equal(a * b, 20)
})

test_that("Test linear regression model", {

  expect_equal(unname(coef(model)['gdpPercap']), 0.00076, tolerance = 0.0001)
  expect_equal(nobs(model), 1704)
})

test_that("Test data set", {
  expect_unique(c(year, country), data = gapminder)
  expect_range(gdpPercap, 0, 1e6, data = gapminder)
  expect_values(continent, c("Asia", "Europe", "Africa", "Americas", "Oceania"), data = gapminder)
})
