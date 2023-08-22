#Factors introduction

#factor creation
gender <- factor(c("male","female","female","female","male"))
gender

#levels will be automatically ordered alphabetically 

questions <- factor(c(1,2,1,4,5,2,3,4,5,3,2))
questions

#importing data, use read.csv

#exclude argument in factor 
questions_ex <- factor(c(1,2,1,4,5,2,3,67,8), exclude = 1)
questions_ex

#automatically excludes NAs, pass exclude = NULL if you want to have NA as a level
