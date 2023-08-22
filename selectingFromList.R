#Selecting elements from a list

freedom <- list("greeting" = "hello","logical" = FALSE,
"counts" = c(2,3,1),"sec_logical"= TRUE,"largest" =34,"double" =3.2)

freedom

#first element
freedom[1]

#just element of "logical"
freedom[[2]]

#second element in counts data
freedom[[3]][[2]]

#just the vector in counts
freedom[[3]]

#with the name
freedom[3]

#using the name of the element
freedom["largest"]
freedom[["largest"]]

#using integer vector
freedom[c(1,2)]

#using logical operator
freedom[c(TRUE,FALSE)]
