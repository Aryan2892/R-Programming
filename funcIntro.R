#function creation

#we have been using a variety of fn already 
sample()
seq()
sapply()
lapply()

#fn name <- fn(arg_1,arg_2,...){
 #fn body
#}

#simple user defined fn
func <- function(x) {
  y <- x * x
  return(y)
}

func(2)
func(5)
