# Linear-Regression-with-R
Simple linear Regression with R.

## A. Introduction

### 1. Dataset Description

| Field        | Description |
|--------------|-------------|
| **Title**    | Diamonds Characteristics and Pricing Analysis |
| **Author**   | Zahra Nusrat |
| **Description** | The diamonds dataset provides comprehensive information about thousands of gemstones that have been sold. Each record includes attributes such as carat weight, cut quality, color rating, clarity level, price, and physical dimensions. These features support analysis on how quality factors influence diamond value and are suitable for EDA, visualization, and machine learning tasks such as price prediction. |
| **Access Date** | 25/11/2025 |
| **Source**   | https://www.kaggle.com/datasets/zahranusrat/diamonds-characteristics-and-pricing-analysis |

### 2. Workflow and Objective

The task is performed by selecting two variables from the *Diamonds Characteristics and Pricing Analysis* dataset: **Carat** as the independent variable (intercept) and **Price** as the dependent variable. The objective is to determine whether carat weight has a significant influence on the price of a diamond.

## B. Code

bash'''
library(gdata)
diamonds = read.csv('diamonds.csv')
head(diamonds)

install.packages("tidyverse")
install.packages("ggpubr")

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

'''


