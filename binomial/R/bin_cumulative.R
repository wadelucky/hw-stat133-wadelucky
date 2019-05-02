#' @title binomial cumulative
#' @description  compute the binomial cumulative distribution
#' @param trials numeric
#' @param prob numeric
#' @return calculated result
#' @export
#' @examples
#' bin_cumulative(trials = 5, prob = 0.5)
#'
#' dis2 <- bin_cumulative(trials = 5, prob = 0.5)
#' plot(dis2)

bin_cumulative <- function(trials,prob){
  success<-0:trials
  probability<-bin_probability(success,trials,prob)
  cumulative<-cumsum(probability)
  rslt<-data.frame(success,probability,cumulative)
  class(rslt)<-c("bincum","data.frame")
  rslt
}

#' @export
plot.bincum <- function(rslt,...){
  plot(rslt$success,rslt$cumulative,xlab="successes",ylab="probability",type='o')
}
