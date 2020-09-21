############# import data set from excel 

############# exchange NA for 0 in the 2nd column and update the column
EXEMPLE$COLUMN2[is.na.data.frame(EXEMPLE$COLUMN2)] <- 0       

############# exchange NA for 0 in the 3rd column and update the column
EXEMPLE$COLUMN3[is.na.data.frame(EXEMPLE$COLUMN3)] <- 0       

############# exchange NA for 0 in the 4th column and update the column
EXEMPLE$COLUMN4[is.na.data.frame(EXEMPLE$COLUMN4)] <- 0       

############# omit NA elements in the table and update the table
EXEMPLE <- na.omit(EXEMPLE)

############# filter the table with non 0 elements in the 4th column, to do that call the tidyverse library
library(tidyverse)
newtable <- EXEMPLE %>% filter(COLUMN4 != 0)