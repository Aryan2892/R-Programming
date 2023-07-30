#Matrix is a 2D vector
#general formula
#matrix(vecor,nrow,ncol,byrow=false,dimnames=null)

v <- c(1:25)

m <- matrix(v)
m
matrix(v,nrow = 5)


#characters
as = rep('a',3)
bs = rep('b',3)
matrix(c(as,bs),ncol = 2)

#logical 
trues <- rep(TRUE,3)
falses <- rep(FALSE,3)

matrix(c(trues,falses),ncol = 3,byrow = TRUE)


matrix(v,nrow = 5,ncol = 2)
matrix(v,nrow = 4,ncol = 7)


#cbind and rbind
f <- c(1:5)
f2 <- c(6:10)
mc <- cbind(f,f2) 
mc
class(mc)

mr <- rbind(f,f2)
mr
class(mr)

#matrix with all rows and columns are filled with constant k
#matrix(k,nrow,ncol)
matrix(3,2,3)


#diagonal matrix
#entries outside main diagonal are zero
#diag(k,nrow,ncol)
diag(8,3,3)
