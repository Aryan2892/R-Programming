#common operations on list
counts <- list("Year" = c(2011,2012,2013,2014),
               "count" = c(686,2802,343,3171),
               "Loc" = c("Pune","Mumbai","Nashik","Neemrana"))

#converting into vector
unlist(counts)

counts2 <- list("2011" = c(686,2802,343,3171,5653,584,2949,1226,1268,
                           299,190),
                "2012" = c(14730,2512,4694,3112,4364,1091,46485,5409))

#lapply(x,FUN,..)
lapply(counts2,mean)

#sapply(x,FUN,...,simplify = TRUE, USE.NAMES = TRUE)
sapply(counts2,median)
