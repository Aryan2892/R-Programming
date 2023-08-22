#Repeat loops

#repeat {
  #code block to be iterated 

  #if (condition){
    #break
  #}
#}

#similar to while loop except for placement of break

value <- 3

repeat{
  print(value)
  value <- value - 1
  if(value < 0 )
    break
}

#avoid this
repeat{
  print(value)
  value <- value - 1
}

