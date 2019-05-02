# title auxiliary skewness
# description return mode given trials and prob
# input trials numeric
# input prob numeric
# return the computed data

aux_skewness <- function(trials,prob){
  return((1-2*prob)/sqrt(trials*prob*(1-prob)))
}
