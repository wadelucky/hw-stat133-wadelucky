#' @title binomial probability
#' @description  probability of getting success successes or less successes in trials trials
#' @param success numeric vector
#' @param trials numeric
#' @param prob numeric
#' @return calculated result
#' @export
#' @examples
#' bin_probability(success = 2, trials = 5, prob = 0.5)
#'
#' bin_probability(success = 0:2, trials = 5, prob = 0.5)
#'
#' bin_probability(success = 55, trials = 100, prob = 0.45)

bin_probability <- function(success,trials,prob){
  if(check_trials(trials)!=TRUE){
    stop("invalid trials value")
  }
  if(check_prob(prob)!=TRUE){
    stop("invalid prob value")
  }
  if(check_success(success,trials)!=TRUE){
    stop("invalid success value")
  }
  return(bin_choose(trials,success)*prob^success*(1-prob)^(trials-success))
}
