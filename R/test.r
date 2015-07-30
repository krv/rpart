# setwd("C:/Users/kboudt/Dropbox/doctoraatKristofVerbeken/Rearrangement algorithm/rpart/R")

source("greedy.R")
source("differencing.R")

numbers <- c(771, 121, 281, 854, 885, 734, 486, 1003, 83, 62)
tests <- 1000

results <- matrix(0,
                  nrow = tests,
                  ncol = 3)
colnames(results) <- c("greedy", "karmarkar-karp", "RA")


for (test in 1:tests) {
  set.seed(test)
  current <- sample(numbers)
  results[test, 1] <- greedy(current)
  results[test, 2] <- differencing(current)
  results[test, 3] <- ra(current)
}
