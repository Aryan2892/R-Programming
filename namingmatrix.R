#Matrix Metrics and naming

#Matrix dimensions

set.seed(123) #tells R to go to a pseudo random number generator 
#starting from 123
scores <- sample(50:100,12)

test_scores <- matrix(scores,3,4)

#if matrix is small enough take a look at it as a whole
test_scores

#dimensions
dim(test_scores)

#to see no.of rows
nrow(test_scores)

#to see no. of col
ncol(test_scores)

#total no. of components in matrix = length 
length(test_scores)
prod(dim(test_scores)) #multiplying dimensions together

#naming rows and cols
rownames(test_scores) <- c("t1","t2","t3")
colnames(test_scores) <- c("mad","sad","rad","had")

test_scores

attributes(test_scores)

#remove names
unname(test_scores)#this is just on runtime
#asssign it to test_scores for it to take effect

colnames(test_scores) <- NULL

attributes(test_scores)
