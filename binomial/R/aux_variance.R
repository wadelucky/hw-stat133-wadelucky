# title auxiliary variance
# description return variance given trials and prob
# input trials numeric
# input prob numeric
# return the computed data

aux_variance <- function(trials,prob){
  return(trials*prob*(1-prob))
}
