#' @title binomial variable
#' @description a function defines weirdly
#' @param trials numeric
#' @param prob numeric
#' @return an object of class "binvar"
#' @export
#' @examples
#' bin1 <- bin_variable(trials = 10, p = 0.3)
#' bin1
#'
#' bin1 <- bin_variable(trials = 10, p = 0.3)
#' binsum1 <- summary(bin1)
#' binsum1

bin_variable <- function(trials,prob){
  if(check_trials(trials)&&check_prob(prob)){
    rslt<-list(
      trials=trials,
      prob=prob
    )
    class(rslt)<-"binvar"
    rslt
  }else{
    stop("invalid type of trials or prob")
  }
}

#' @export
print.binvar <- function(rslt,...){
  print("Binomial variable")
  writeLines("\n")
  print("Parameters")
  print(paste("- number of trials:",rslt$trials))
  print(paste("- prob of success :",rslt$prob))
}

#' @export
summary.binvar <- function(rslt,...){
  temp<-list(
    trials=rslt$trials,
    prob=rslt$prob,
    mean=aux_mean(rslt$trials,rslt$prob),
    variance=aux_variance(rslt$trials,rslt$prob),
    mode=aux_mode(rslt$trials,rslt$prob),
    skewness=aux_skewness(rslt$trials,rslt$prob),
    kurtosis=aux_kurtosis(rslt$trials,rslt$prob)
  )
  class(temp)="summary.binvar"
  temp
}

#' @export
print.summary.binvar <- function(rslt,...){
  print("Summary Binomial")
  writeLines("\n")
  print("Parameters")
  print(paste("- number of trials:",rslt$trials))
  print(paste("- prob of success :",rslt$prob))
  writeLines("\n")
  print(paste("- mean    :",rslt$mean))
  print(paste("- variance:",rslt$variance))
  print(paste("- mode    :",rslt$mode))
  print(paste("- skewness:",rslt$skewness))
  print(paste("- kurtosis:",rslt$kurtosis))
}
