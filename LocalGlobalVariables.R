#Local vs Global Variables

#local - found within a fn
#global - found in global env

# R will find variable in global if not found in local 
func2 <- function() {
  print(x)
}
x <- 1
func2()

#R doesnt change global variable if it is changed inside a fn
x <- 1
func3 <- function() {
  x <- 2
  print(x)
}
func3()
x

#use double assignment if you want to change global variable
x <- 1
y <- 3
func4 <- function() {
  x <- 2
  y <<- 5
  print(paste(x,y))
}
func4()
x
y
