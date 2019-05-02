#' @title binomial mode
#' @description return mode given trials and prob
#' @param trials numeric
#' @param prob numeric
#' @return the computed data
#' @export
#' @examples
#' bin_mode(10,0.3)

bin_mode <- function(trials,prob){
  if(check_trials(trials)&&check_prob(prob)){
  return(aux_mode(trials,prob))
  }
}
