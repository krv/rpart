#' Greedy
#'
#' Greedy version of the partition problem
#'
#' @param X numeric array or matrix
#'
#' @return randomly permuted numeric matrix
#'
#' @export
#'
#' @seealso The \code{\link{ra}} for the rearrangement algorithm
#'
#' @author Kris Boudt, \email{kris.boudt@@vub.ac.be}
#' @author Steven Vanduffel, \email{steven.vanduffel@@vub.ac.be}
#' @author Kristof Verbeken, \email{kristof.verbeken@@vub.ac.be}
greedy <- function(X) {
  X <- sort(X, decreasing = TRUE)
  A <- 0
  B <- 0
  for (element in 1 : length(X)) {
    if (sum(A) < sum(B))
      A <- A + X[element]
    else
      B <- B + X[element]
  }

  difference <- abs(A - B)

  return(difference)
}
