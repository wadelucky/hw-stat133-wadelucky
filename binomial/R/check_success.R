# title check success
# descirption  test if an input success is a valid value for number of successes
# input success vector
# input trials numeric

check_success <- function(success,trials){
  if(is.numeric(success)){
    if(max(success)>trials){
        stop("invalid success value")
      }
    return(TRUE)
  }else{
    stop("invalid success type")
  }
}
