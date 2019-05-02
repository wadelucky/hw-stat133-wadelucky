# title check probability
# description test if an input prob is a valid probability value
# param prob numeric
# return True if prob is valid
# export
# examples
# check_porb(0)
#
# check_prob(0.5)

check_prob <- function(prob) {
  if(is.numeric(prob)){
    if(prob>1||prob<0){
      stop("p has to be a number between 0 and 1")
    }else{
      return(TRUE)
    }
  }else{
    stop("invalid prob type")
  }
}
