# title auxiliary mode
# description return mode given trials and prob
# input trials numeric
# input prob numeric
# return the computed data

aux_mode <- function(trials,prob){
  return(floor(trials*prob+prob))
}
