library(tidyverse)
library(forcats)
library(dplyr)
library(tidyr)
# Factors with forcat package
# Creating factors
x1<- c("Dec", "Apr", "Mar")
x1
x2 <- c("dec", "jam", "mar", "apr")
x2
# Create a list of valid levels
month_levels <- c("Jan", "Feb","Mar", "Apr","May", "Jun", "Jul", "Aug","Sep","Oct", "Nov", "Dec")
# Now create factors
y1 <- factor(x1, levels = month_levels)
y1
# General Society survey example...
# data set used gss_cat
gss_cat
# Explore the dataset.
View(gss_cat)
gss_cat %>%
  count(race)
ggplot(gss_cat, aes(race))+geom_bar()
ggplot(gss_cat,aes(marital))+geom_bar() 
ggplot(gss_cat,aes(marital))+geom_bar() + scale_x_discrete(drop= FALSE)
ggplot(gss_cat, aes(race))+geom_bar()+ scale_x_discrete(drop= FALSE)
