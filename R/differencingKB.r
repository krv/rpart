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
  mat = c()
  i=1
  sets={};
  #sets[[i]]=list(X = X, d=NA)  
  sets[[i]]=sort(X)
  while(length(X) > 1) {

      X <- sort(X, decreasing = TRUE)
      difference <- abs(X[1] - X[2])
      sel = c(1:min(c(2,length(X))))
      mat = rbind(mat,  X[1:2] )
      X <- c(X[-c(1, 2)], difference)
      i=i+1
      #sets[[i]] = list(X = X,d=difference)
      sets[[i]] = sort(X)
   }
  a = mat[,1]
  b = mat[,2]
  mat=cbind( mat,abs( mat[,2]-mat[,1]))
  colnames(mat) = c("a","b","abs a-b")
  print(mat)
  pa = tail(a,1) ; pb=tail(b,1)
  n = length(a)-1
  #????

  }
  sum(pa,na.rm=T)-  sum(pb,na.rm=T)

  return(X)
}





