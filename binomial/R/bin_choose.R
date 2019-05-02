#' @title binomial choose
#' @description  calculates the number of combinations in which k successes can occur in n trials
#' @param n numeric
#' @param k numeric vector
#' @return calculated result
#' @export
#' @examples
#' bin_choose(n=5, k=2)
#'
#' bin_choose(5,0)
#'
#' bin_choose(5,1:3)

bin_choose <- function(n,k){
  rslt<-rep(0,length(k))#initialization
  if(max(k)>n){
    stop("k cannot be greater than n")
  }
  rslt<-factorial(n)/(factorial(k)*factorial(n-k))
  return(rslt)
}
