library(tidyverse)
metadata=read.table(file="Saanich.metadata.txt", header=TRUE, row.names=1, sep="\t", na.strings="NAN")

oxygen=metadata %>% 
  select (O2_uM)

metadata %>%
  select(matches("O2|oxygen"))    #looks for data with names that match with oxygen (O2 or oxygen); can also use to check variable names, are things connceted that make sense being connected?

metadata %>%
  filter(O2_uM == 0) #gets rows where oxygen = 0

metadata %>%
  filter (O2_uM==0) %>%
  select(Depth_m) #at what depths is oxygen zero?

print(metadata[1,]) #look at only column names

metadata %>%
  filter (CH4_nM > 100 & Temperature_C < 10) %>% #searches for locations where methan > 100, temp <10
  select(Depth_m, CH4_nM, Temperature_C)  #finds places based on above, and prints the depth, CH4, and temp at those points
  
metadata %>%
  mutate(N2O_uM = N2O_nM/1000) # take nM variable, define new varia uM (and in this case do that by converting the unit)



