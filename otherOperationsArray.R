#Other operations on arrays
#apply function
#apply(x,margin,function):
  #x : vector
  #margin : how the function is to be applied - c(1) = rows; c(2) = columns
            #c(1,2) = both
  #function : built-in/userdefined fn to be applied over array

v <- c(1:24)
rnames <- c("a","b","c","d")
vnames <- c("col1","col2","col3")
mnames <- c("matrix1","matrix2")
arr <- array(v,dim = c(4,3,2), dimnames = list(rnames,vnames,mnames))
arr

apply(arr,c(1),sum)#calculating some of each row
