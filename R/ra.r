#' Rearrangement algorithm
#'
#' RA version of partition problem
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
ra <- function(X) {
  require('blockra')

  matrix <- rbind(X, rep(0, length(X)))
  rearranged <- blockra::ra(matrix)
  sums <- rowSums(rearranged)
  difference <- abs(sums[1] - sums[2])

  return(difference)
}
