#dplyr and Data transformation
library(dplyr)

# %>% piping operator
names <- c("Mary","Anna","Emma","Eli","Taylor","Minnie","Aryan","Mohit","Ifham"
           ,"Manasi")
pages_read <- c(168,56,186,123,72,102,184,200,83,118)
book = c("HP","AGG","TBC","M","DB","Inferno","IK","TSA","EF","HI")
reading_tibble <- tibble("Names" = names,"Pages_Read" = pages_read,
                         "Book" = book)

iris_tib <- as_tibble(iris)
iris_tib

#filter out rows based upon one variable
#use double "==" to test for equality
setosa <- iris_tib %>% filter(Species == "setosa")
unique(setosa$Species)

#careful with decimal point numbers in equality comparisons
sqrt(2) ^ 2 == 2
near(sqrt(2) ^ 2,2)

#logical operators  
greater100 <- reading_tibble %>% filter(Pages_Read >= 100) #doubt = dont use quotes

#More than one comparison
g100_150 <- reading_tibble %>% filter(Pages_Read > 100 & Pages_Read < 150)

#If data is missing than it will be excluded, have to ask for it explicitly if 
#you want to view them after comparison 
na_example <- tibble(x = c(1,NA,3))
filter(na_example, x> 1)
filter(na_example, is.na(x) | x > 1)

#reorder the rows based on one variable
petal_length_asc <- iris_tib %>% arrange(Petal.Length)
petal_length_asc
petal_length_desc <- iris_tib %>% arrange(desc(Petal.Length))
petal_length_desc


#missing values always go at the end

#select()
species_petal_width <- iris_tib %>% select(Species,Petal.Width)
species_petal_width
not_species_pw <- iris_tib %>% select(-Species,-Petal.Width)
not_species_pw

species_petal_width2 <-  iris_tib %>% select(Species,"PW" = Petal.Width)
species_petal_width2

#rename()
petal_length2 <- iris_tib %>% arrange(Petal.Length) %>% rename(PL = Petal.Length)
petal_length2
