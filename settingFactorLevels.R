#setting factor levels

blood_type = c("O","A","O","O","A","B","B","B")
blood_type_factor <- factor(blood_type)
blood_type_factor

#what are the levels in blood_type
levels(blood_type_factor)

#how is the factor structured
str(blood_type_factor)

#Specify factor levels
blood_type_factor2 <- factor(blood_type,levels = c("A","AB","B","O"))
blood_type_factor2
str(blood_type_factor2)

blood_type_factor2[length(blood_type_factor2)] <- "AB"

#Levels vs labels
#levels are related to input while labels are related to output
set.seed(123)
mons <- sample(month.name,120,replace = TRUE)
month_factor <- factor(mons,levels = month.name)
levels(month_factor)

#Labels to be abbreviations
month_factor2 <- factor(mons,labels = month.abb)
month_factor2

#Labels must be the same length as number of levels
month_factor3 <- factor(mons,labels = c(month.abb,"Mon"))
month_factor3

#level dont have that issue
month_factor4 <- factor(mons,levels = c(month.name,"Mon"))
month_factor4                        
