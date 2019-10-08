library(tidyverse)
library(gapminder)
library(here)

write_csv(gapminder, here::here("STAT545-participation", "cm011", "gapminder.csv"))
View(gapminder)

gapminder_sum <- gapminder %>%
  group_by(continent) %>%
  summarize(avg_lifeExp = mean(lifeExp))

View(gapminder_sum)
write_csv(gapminder_sum, here::here("STAT545-participation", "cm011", "gaminder_sum.csv"))

gapminder_sum %>%
  ggplot(aes(continent, avg_lifeExp)) +
  geom_point() +
  theme_bw()

library(here)

write_csv(gapminder_sum, here::here("STAT545-participation", "cm011", "gapminder_sum.csv"))