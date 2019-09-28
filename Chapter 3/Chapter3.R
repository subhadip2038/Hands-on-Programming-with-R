#Data transformation with dplyr

library(dplyr)
library(tidyverse)
setwd("D:/Predictive Analytics/R/R For Data Science/Chapter 3")
WO_data <- read.csv(file= "D:/Predictive Analytics/R/R For Data Science/Chapter 3/Valve_WO_DATA_Analysis.csv")
View(WO_data)
WO_DATA <- as_tibble(WO_data)
WO_DATA
#filter rows with filter()
filter(WO_DATA, LOCPRIORITY_ALN == "M")
ggplot(WO_DATA, mapping = aes(x=PROBLEMCODE, y=SUM.W.ACTLABCOST.))+ geom_bar()
colnames(WO_DATA)[colnames(WO_DATA)=="SUM.W.ACTLABCOST."] <- "LABCOST"