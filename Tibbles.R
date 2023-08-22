#Tibbles

library(tibble)

names <- c("Mary","Anna","Emma","Eli","Taylor","Minnie","Aryan","Mohit","Ifham"
           ,"Manasi")
pages_read <- c(168,56,186,123,72,102,184,200,83,118)
book = c("HP","AGG","TBC","M","DB","Inferno","IK","TSA","EF","HI")
reading_df <- data.frame("Names" = names,"Pages_Read" = pages_read,
                         "Book" = book,stringsAsFactors = FALSE)

#make it into a tibble
reading_tibble <- tibble("Names" = names,"Pages_Read" = pages_read,
                         "Book" = book)

#tibble doesnt adjust column name
#doesnt use row.names()
#only recycles vectors of length 1


#printing 
#shows only first 10 rows and columns on one screen
tib_mtcars <- as_tibble(mtcars)
options(tibble.print_max = 15, tibble.print_min = 15)
tib_mtcars

#print all rows
options(tribble.print_max = Inf)
tib_mtcars

options(tribble.print_max = 10,tribble.print_min = 10)
#subsetting always returns another tibble
class(reading_df[,1:2])
class(reading_df[,1])

class(reading_tibble[,1:2])
class(reading_tibble[,1])


#Recycling
#only values of length 1 are recycled 
tibble(a = 1,b = 1:3)

#!Error
tibble(a = 1:2, b = 1:4)

data.frame(a = 1:2, b = 1:4)

#!Error
data.frame(a = 1:3, b = 1:4)
