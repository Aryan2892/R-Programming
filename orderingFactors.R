#Ordering Factors
set.seed(123)
mons <- sample(month.name,120,replace = TRUE)
month_factor <- factor(mons)

#levels are alphabetically ordered
levels(month_factor)

#preserve the order in which they show up 
month_factor_preserved <- factor(mons, levels = unique(mons))
levels(month_factor_preserved)

#place them in chronological order
month.name #built in R vector that lists the names of the months
#in chronological orderf
month_factor_chron <- factor(mons,levels = month.name)
levels(month_factor_chron)

#tell R that there is specific order to the levels
r_knows_ordered <- factor(mons,levels = month.name, ordered = TRUE)
r_knows_ordered[1] > r_knows_ordered[2] #April > Jan = false

#months with counts
table(r_knows_ordered)

#when graphing, sometimes it is useful to reverse the order of the labels
r_knows_reversed <- factor(mons,labels = rev(levels(r_knows_ordered)))
r_knows_reversed

#relevel to maintain order of other levels but move on to the front
releveled <- relevel(month_factor_chron,"December")
releveled
