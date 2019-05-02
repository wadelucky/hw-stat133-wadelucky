#' @title binomial skewness
#' @description return mode given trials and prob
#' @param trials numeric
#' @param prob numeric
#' @return the computed data
#' @export
#' @examples
#' bin_skewness(10,0.3)

bin_skewness <- function(trials,prob){
  if(check_trials(trials)&&check_prob(prob)){
  return(aux_skewness(trials,prob))
  }
}
