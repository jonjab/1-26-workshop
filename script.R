# my first script

df <- data.frame(firstname = 'Jon', lastname = 'jablonski')

# gapminder real example
gapminder <- read.csv("data/gapminder_data.csv")

library("ggplot2")
library("dplyr")


gapminder[sample(nrow(gapminder), 5), ]
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + 
  geom_point()

ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) +
   geom_line()

ggplot(data = gapminder, aes(x=year, y=lifeExp, by=country)) + 
  geom_line(aes(color=continent)) +
  geom_point(aes(color=continent))


#dplyr: summarizing data by continent
gdp_byContinent <- gapminder %>% group_by(continent) %>%
  summarize(meanGDP = mean(gdpPercap))
gdp_byContinent

# summarize life expenctanct by country
gdp_byCountry <- gapminder %>% group_by(country) %>%
  summarize(meanLifeExp = mean(lifeExp))
gdp_byCountry
 
