library(tidyverse)
library(nycflights13)
airlines
airports
planes
weather
flights
planes %>%
  count(tailnum) %>%
  filter(n>1)
flights2 <- flights %>%
  select(year:day, hour, origin, dest, tailnum, carrier)
flights2
flights2 %>%
  left_join(airlines, by= "carrier")
flights2 %>% 
  select(-origin)
flights2 %>%
  left_join(planes, by= "tailnum")
flight3 <- flights2 %>% 
  left_join(weather)
View(flight3)