#' @title binomial variance
#' @description return variance given trials and prob
#' @param trials numeric
#' @param prob numeric
#' @return the computed data
#' @export
#' @examples
#' bin_variance(10,0.3)

bin_variance <- function(trials,prob){
  if(check_trials(trials)&&check_prob(prob)){
  return(aux_variance(trials,prob))
  }
}
