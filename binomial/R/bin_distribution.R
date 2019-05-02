#' @title binomial distribution
#' @description  distribution of getting successes in trials given prob
#' @param trials numeric
#' @param prob numeric
#' @return calculated result
#' @export
#' @examples
#' bin_distribution(trials = 5, prob = 0.5)
#'
#' dis1 <- bin_distribution(trials = 5, prob = 0.5)
#' plot(dis1)


bin_distribution <- function(trials,prob){
  success<-0:trials
  probability<-bin_probability(success,trials,prob)
  rslt<-data.frame(success,probability)
  class(rslt)<-c("bindis","data.frame")
  rslt
}

#' @export
plot.bindis <- function(rslt,...){
  # library(ggplot2)
  # ggplot(rslt,aes(x=success,y=probability))+
  #   geom_bar(stat="identity",fill="grey")+
  #   xlab("successes")+
  #   ylab("probability")+
  #   theme_minimal()+
  #   theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())
  barplot(rslt$probability,xlab="successes",ylab="probability",names.arg = rslt$success)
}
