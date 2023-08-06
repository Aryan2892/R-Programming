#Array Creation
#1D array (Vector)
v <- c(1:24)

uni_arr <- array(v)

#2D array (Matrix)
mat_array <- array(v,dim = c(6,4,1)) #doubt
mat_array

#3D array 
arr <- array(v,dim = c(4,3,2))
arr

#changing dimensions of a vector to create an array
dim(v) <- c(2,4,3)
v
