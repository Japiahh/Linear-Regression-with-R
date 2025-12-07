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

```r
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

```

## 2. Code Explanation and Console Output

### a. Importing and Visualizing the Dataset

```r
library(gdata)
diamonds = read.csv('diamonds.csv')
head(diamonds)
```
The dataset is imported using the gdata library, and the first six rows are displayed using the head() function.

Console Output:
```
mathematica
Salin kode
> head(diamonds)
  carat       cut color clarity depth table    x    y    z price
1  0.23     Ideal     E     SI2  61.5    55 3.95 3.98 2.43   326
2  0.21   Premium     E     SI1  59.8    61 3.89 3.84 2.31   326
3  0.23      Good     E     VS1  56.9    65 4.05 4.07 2.31   327
4  0.29   Premium     I     VS2  62.4    58 4.20 4.23 2.63   334
5  0.31      Good     J     SI2  63.3    58 4.34 4.35 2.75   335
6  0.24 Very Good     J    VVS2  62.8    57 3.94 3.96 2.48   336
```

