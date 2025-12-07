library(gdata)
diamonds = read.csv('diamonds.csv')
head(diamonds)

install.packages("tidyverse")
install.packages("ggpubr")

install.packages("devtools")
devtools::install_github("r-lib/conflicted")

library(tidyverse)
library(ggpubr)
theme_set(theme_pubr())

carat = diamonds$carat
price = diamonds$price

model = lm(carat ~ price)
model

ggplot(diamonds, aes(x = price, y = carat))+
  geom_point()+
  stat_smooth(method = lm)

cor(price, carat)

summary(model)
