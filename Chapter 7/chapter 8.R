# Data Import with readr()
library(tidyverse)
read_table<-read_csv(file.choose(new=FALSE))
read_table
M103 <- read_table
View(M103)
M108 <-read_table<-read_csv(file.choose(new=FALSE))
M108
View(M108)
Data_property <- pull(M103, Property)
Value_M103 <- pull(M103, Value)
Value_M108 <- pull(M108, Value)
mutate(Value_M103, M108=Value_M108)
Value_M103
Value_M108
as.tibble(Value_M103)
as.tibble(Value_M108)
Data <- tibble(
  Value_M103,
  Value_M108
)
as.tibble(Data_property)

Data<- mutate(Data,property= Data_property)
View(Data)
