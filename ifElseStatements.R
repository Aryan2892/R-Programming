#If else statements

#if something happens do this else do that

#if (sunny outside){
#bring sunglasses
#} #else if (raining){
#bring umbrella
#} 
#else{
#bring umbrella just in case
#}

#Examples

#with char

char <- c("hello","goodbye")

if(char[1] ==  "hello"){
  print("goodbye")
} else {
  print("hi")
}

if(char[2] ==  "hello"){
  print("goodbye")
} else {
  print("hi")
}

value <- 3
if(value < 1){
  print(TRUE)
} else {
  print(FALSE)
}

if(value < 1){
  print("yAy")
} else {
  value <- value - 1
}
value

#to not run again and again we use loops

