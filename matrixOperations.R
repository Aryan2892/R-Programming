set.seed(123)
n <- sample(1:100, 9)
matrix1 <- matrix(n,3,3)

#inverse of a matirx
#this will find reciproocal of a matrix
#which when multiplied by matrix1 wqill result in 1(identity matrix)
inv_matrix1 <- solve(matrix1)

matrix1 %*% inv_matrix1

#transpose 
#flip rows and columns
t(matrix1)

#%in% operator
#find out if a number is in a matrix 
18 %in% matrix1

14 %in% matrix1

#eigenvalues and eigenvectors
eigen(matrix1)

