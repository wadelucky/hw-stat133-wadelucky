# title check trials
# description  test if an input trials is a valid value for number of trials
# input trials numeric
# return True if trials is valid

check_trials <- function(trials){
  if(is.numeric(trials)){
    if(trials<0){
      stop("invalid trials value")
    }else{
      return(TRUE)
    }
  }else{
    stop("invalid trials type")
  }
}
