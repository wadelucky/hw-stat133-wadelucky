# title auxiliary kurtosis
# description return mode given trials and prob
# input trials numeric
# input prob numeric
# return the computed data

aux_kurtosis <- function(trials,prob){
  return((1-6*prob*(1-prob))/(trials*prob*(1-prob)))
}
