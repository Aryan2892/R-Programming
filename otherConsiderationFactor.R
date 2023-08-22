#other considerations in factors

#generating factor levels
#gl(n,k,labels)
  #n : integer giving number levels
  #k : integer giving number of replications
  #labels : vector of labels for the resulting factor levels

sports <- gl(4,3,labels = c("Running","Biking","Swimming","Jumping"))
sports

#cut fn
car_mpg <- cut(mtcars$mpg, 3)
car_mpg
is.factor(car_mpg)
table(car_mpg)

#pretty fn to make nicer default labels
car_mpg <- cut(mtcars$mpg, pretty(mtcars$mpg))
table(car_mpg)

car_mpg <- cut(mtcars$mpg,3,c("low","med","high"))
table(car_mpg)
