#array similar to matrix

#naming
v <- c(1:24)
rnames <- c("a","b","c","d")
vnames <- c("col1","col2","col3")
mnames <- c("matrix1","matrix2")
arr <- array(v,dim = c(4,3,2), dimnames = list(rnames,vnames,mnames))
arr

#metrics
dim(arr)
attributes(arr)

#selecting elements
arr["a","col2","matrix1"]

#matrix arithmatic 
m1 <- arr[ , ,"matrix1"]
m2 <- arr[ , , "matrix2"]
m1+m2

#operations
12 %in% arr

#modification 
arr["a","col2","matrix1"] <- 555
arr
