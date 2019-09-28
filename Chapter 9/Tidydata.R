library(tidyverse)
table1 # tidy data
table2
table3
table4a
table4
#Compute rate per 10,000
table1 %>% 
  mutate(rate = cases/population*10000)
#compute cases per year 
table1 %>%
  count(year, wt= cases)
#visualize canges over time
ggplot(table1, aes(year, cases))+ geom_line(aes(group= country), colour= "grey50")+ geom_point(aes(color= country))
# Spreading and gathering with tidyr spread() and gather()
table4a
#gathering
table4a %>%
  gather('1999','2000', key= 'year', value= 'cases')
table4b
table4b %>%
  gather('1999','2000', key= 'year', value= 'population')
#Separating
table3 %>%
  separate(rate, into = c("cses", "population"))
table5 %>%
  unite(new, century, year, sep="")
who
View(who)
who_1 <- who %>%
  gather(new_sp_m014:newrel_f65, key= "key", value= "cases", na.rm = TRUE)
who_1
who_2 <- who_1 %>%
  mutate(key = stringr::str_replace(key,"nrewrel", "new_rel"))
who_3 <- who_2 %>%
  separate(key, c("new", "type", "sexage"), sep="_")
who_3
who_3 %>% 
  count(new)
who_4  <- who_3 %>% 
  select(-new,-iso2,-iso3)
who_4
who_5
who %>% 
  gather(code, value, new_sp_m014:newrel_f65, na.rm=TRUE) %>% 
  mutate(
    code= stringr:: str_replace(code, "newrel", "new_rel")) %>%
      separate(code, c("new", "var", "sexage")) %>%
      select(-new, -iso2,-iso3) %>%
      separate(sexage, c("sex", "age"), sep=1)
View(who)
  
