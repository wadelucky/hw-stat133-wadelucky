#' @title binomial kurtosis
#' @description return mode given trials and prob
#' @param trials numeric
#' @param prob numeric
#' @return the computed data
#' @export
#' @examples
#' bin_kurtosis(10,0.3)
bin_kurtosis <- function(trials,prob){
  if(check_trials(trials)&&check_prob(prob)){
  return(aux_kurtosis(trials,prob))
  }
}
