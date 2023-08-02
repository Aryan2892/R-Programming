set.seed(123)
scores <- sample(50:100,12)

test_scores <- matrix(scores,3,4,
                      dimnames = list(c("t1","t2","t3"),
                                      c("sad","mad","had","mad")))
test_scores

class(test_scores)

#accessing the first row - return as a vector
vec_scores <- test_scores[1,] #blank space is where col no is specified
#but we want all col so left blank
class(vec_scores)
is.vector(vec_scores)

test_scores["t1", ]

#last row
test_scores[nrow(test_scores), ]

#return as a matrix
new_matrix <- test_scores[1, ,drop = FALSE]
class(new_matrix)

#accessing the first column
test_scores[ , 1]
#last col
test_scores[ , ncol(test_scores)]

#accessing just a single component and access t2 score
test_scores[2,3]

#accessing element if counting down each column
test_scores[[8]]
test_scores[8]

#also use row and col name
test_scores["t2","had"]

#can create submatrix of original matrix
sub_scores <- test_scores[1:3, 1:2]
sub_scores

#all col except second
test_scores[ , -2]

sub_scores <- test_scores[c(1,2,3), c(1,2)]

#Logical indexing
test_scores[c(TRUE,FALSE)]

#number of tests that scores A
length(test_scores[test_scores > 90])
test_scores > 90
