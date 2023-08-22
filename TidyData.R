#Tidy data 

#examples of tidying data

#First the tidy data set
table1
#every variable has its own column 
# every observation has its own row
#every cell has its value

table2
#How to make this data tidy?

#Pivot_wider #will make 2 separate col from data set
#column to make the variable names from : "type" which has cases
# and population
#column that has values : "count"

table2 %>% pivot_wider(names_from = type, values_from = count)
#now we are back with out tidy form of data in table 1

#Pivot_longer()

#sometimes names of columns are actually the values of variables like table4a
table4a
#it has years  (1999,2000) as column names

#Let's pivot the data to make it tidy
#need 3 parameters : 
# 1. col whose names are values not variables
# 2. name of variable = "year"
# 3. name of variable to move to values to = "cases"

tidya <- table4a %>% pivot_longer(c('1999','2000'),names_to = "year",
                                  values_to = "cases")

#Take a look at table 4b
table4b
#we can perform the same process to make the dataset tidy
tidyb <- table4b %>% pivot_longer(c('1999','2000'),names_to = "year",
                                  values_to = "populations")

#now lets join our datasets
left_join(tidya,tidyb)
