#' @title binomial mean
#' @description get mean given trials and prob
#' @param trials numeric
#' @param prob numeric
#' @return the computed data
#' @export
#' @examples
#' bin_mean(10,0.3)

bin_mean <- function(trials,prob){
  if(check_trials(trials)&&check_prob(prob)){
  return(aux_mean(trials,prob))
  }
}
