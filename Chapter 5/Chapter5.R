getwd()
library(tidyverse)
library(dplyr)
ggplot(data=diamonds)+geom_bar(mapping = aes(x=cut))
diamonds %>%
  count(cut)
ggplot(data=diamonds)+geom_histogram(mapping = aes(x=carat), binwidth=0.5)
ggplot(data=diamonds)+geom_histogram(mapping = aes(x=carat), binwidth=0.25)
ggplot(data=diamonds)+geom_histogram(mapping = aes(x=carat), binwidth=0.3)
ggplot(data=diamonds)+geom_histogram(mapping = aes(x=carat), binwidth=0.1)
ggplot(data=diamonds)+geom_histogram(mapping = aes(x=carat), binwidth=0.01)
ggplot(data=diamonds)+geom_boxplot(mapping = aes(x=cut, y=price))
ggplot(data= mpg, mapping = aes(x= class, y= hwy))+geom_boxplot()
ggplot(data= mpg, mapping = aes(x= class, y= hwy))+geom_boxplot()
ggplot(data = diamonds, mapping = aes(x=cut, y=color))+geom_count()
diamonds %>%
  count(color,cut) %>%
ggplot(data= diamonds, mapping = aes(x= color, y= cut)) +
  geom_tile(mapping = aes(fill=n))
ggplot(data= diamonds)+geom_point(mapping = aes(x=carat, y= price))
ggplot(data= diamonds)+geom_point(mapping = aes(x=carat, y= price), alpha=1/100)
ggplot(data=diamonds, aes(carat, price))+geom_bin2d()
ggplot(data= diamonds)+geom_hex(mapping = aes(x=carat, y= price))
library(modelr)
mod <- lm(log(price)~log(carat), data=diamonds)
diamonds2 <- diamonds %>%
  add_residuals(mod) %>%
  mutate(resid= exp(resid))
ggplot(diamonds2)+geom_point(mapping = aes(carat,resid))
ggplot(diamonds2)+geom_boxplot(mapping = aes(x = cut,y= resid))
