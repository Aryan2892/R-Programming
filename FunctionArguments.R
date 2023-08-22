#Function arguments

#function with no arguments
complicated_calc() <- c()
no_arg_fx <- function() {
  for (i in 1:10) {
    complicated_calc <- c(complicated_calc,i^2)
  }
  return (complicated_calc) 
}

#recieve the same value everytime it is called
cc <- no_arg_fx()

#calling a fn with arguments (by pos or name)
matrix(cc,2,5,byrow = TRUE)


#Creating our own function
arg_fx <- function(a,b,c) {
  answer <- (a+b)*c
  return(answer)
}
arg_fx(2,3,5)

#or

arg_fx(a = 2,b=3,c=5)
#we can do it out of order
arg_fx(b=3,a = 2,c=5)

#default arguments
default_arg_fx <- function(a,b,c=10) {
  answer <- (a+b)*c
  return(answer)
}
default_arg_fx(3,9)
default_arg_fx(3,9,c = 20)


#arguments are evaluated lazily
lazy_args <- function(a,b){
  print(a^3)
  print(b^2)
  print(a^2)
}
lazy_args(3,5)
