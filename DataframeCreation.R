#DataFrames creation
names <- c("Mary","Anna","Emma","Eli","Taylor","Minnie","Aryan","Mohit","Ifham"
           ,"Manasi")
pages_read <- c(168,56,186,123,72,102,184,200,83,118)

reading_df <- data.frame("Names" = names,"Pages_Read" = pages_read,
                         stringsAsFactors = FALSE)
reading_df

#Structure of dataset
str(reading_df)

#summary statistics and length/class/mode
summary(reading_df)

#single column
reading_df$Names

#show a popup window of the dataframe for you to easily edit
edit(reading_df)

#Head, tail functions
head(reading_df)
tail(reading_df)

#Selecting elements in df is same as in array and matrix
#using [],[[]],$

#can also assign names to each row
rownames(reading_df) <- reading_df$Names
reading_df <- reading_df[-1]
reading_df

#How many pages did Laura read?
reading_df["Manasi",]

#can also add rows and columns using rbind and cbind 
cbind(reading_df,"Book" = c("HP","AGG","TBC","M","DB","Inferno","IK","TSA","EF","HI"))
rbind(reading_df,c("OYE",112))

#most effective way to view data is through tidyverse
