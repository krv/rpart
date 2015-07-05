test1 <- c(2, 10, 3, 8, 5, 7, 9, 5, 3, 2)
test2 <- c(771, 121, 281, 854, 885, 734, 486, 1003, 83, 62)

expect_that(greedy(test1), 0)
expect_that(differencing(test1), 0)
expect_that(ra(test1), 0)
expect_that(greedy(test2), 0)
expect_that(differencing(test2), 0)
expect_that(ra(test2), 0)
