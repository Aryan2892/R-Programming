#Nested Functions

#call a fn within a another fn
nested_fx <- function(x,y) {
  a <- x + y
  return(a)
  }

#nested part
nested_fx(nested_fx(4,3),nested_fx(9,10))

#OR

outer_fx <- function(x,y,z) {
  prod <- nested_fx(x,y) * z
  return(prod)
}
outer_fx(4,3,20)

#Recursion
#v.easy to write a code that never terminates or uses
# excess amounts of memory/processing power

tri_recursion <- function(k){
  if(k > 0) {
    result <- k + tri_recursion(k - 1)
    print(result)
  } else {
    result = 0
    return(result)
  }
}

tri_recursion(6)
