#List manipulation
freedom <- list("greeting" = "hello","logical" = FALSE,
                "counts" = c(2,3,1),"sec_logical"= TRUE,"largest" =34,"double" =3.2)
freedom

#adding element to the list
freedom["goodbye"] <- "see ya"
freedom

#overwrite an element in the list (has to be a multiple of what is being replaced)
freedom[[2]] <- c("see ya later" = "alligator")
freedom

#rename only one of the list names
names(freedom)[2] <- "named_vector"
freedom

#deleting an element from the list
freedom[2] <- NULL
freedom

#same thing, less permamnent
freedom[-2]
freedom


#combining lists 
picform <- list("pic" = c("wood","wry","picu"),
                "ramp"= "tou")
galbul <- list("galbul" = "jacmars")

picform <- c(picform,galbul)

#order matters
picform <- c(galbul,picform)
