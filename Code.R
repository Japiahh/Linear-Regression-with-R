library(gdata)
worldhappiness = read.csv('2019.csv')

names(worldhappiness)
head(worldhappiness)

hap_score = worldhappiness$Score
gdp = worldhappiness$GDP.per.capita
healty_life = worldhappiness$Healthy.life.expectancy
life_choices = worldhappiness$Freedom.to.make.life.choices

head(cbind(hap_score, healty_life, life_choices))

plot(hap_score, healty_life, xlab = "Happiness score", ylab = "Healthy life expectancy")
plot(hap_score, gdp, xlab = "Happiness score", ylab = "GDP per capita")
plot(hap_score, life_choices, xlab = "Happiness score", ylab = "Freedom to make life choices")

stem(hap_score)
stem(gdp)
stem(healty_life)
stem(life_choices)

cor(hap_score, gdp)
cor(hap_score, healty_life)
cor(hap_score, life_choices)

cor.test(hap_score, gdp)
cor.test(hap_score, healty_life)
cor.test(hap_score, life_choices)