#' Differencing algorithm
#'
#' Karmarkar-Karp algorithm
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
differencing <- function(X) {

  while(length(X) > 1) {
      X <- sort(X, decreasing = TRUE)
      difference <- abs(X[1] - X[2])
      X <- c(X[-c(1, 2)], difference)
  }

  return(X)
}
