context("Squaring non-numerics")

num_vec <- c(0, -4.6, 3.4)
num_list <- as.list(num_vec)

test_that("At least numeric vectors work.", {
    expect_identical(square(num_vec), num_vec ^ 2)
    expect_identical(cube(num_vec), num_vec ^ 3)
    expect_identical(reciprocal(num_vec), 1 / num_vec)
})

test_that("list inputs work, too.", {
    expect_identical(square(num_list), num_vec ^ 2)
    expect_identical(cube(num_list), num_vec ^ 3)
    expect_identical(reciprocal(num_list), 1 / num_vec)
})

test_that("Logicals automatically convert to numeric.", {
    logic_vec <- c(TRUE, TRUE, FALSE)
    expect_identical(square(logic_vec), logic_vec^2)
    expect_identical(cube(logic_vec), logic_vec^3)
})
