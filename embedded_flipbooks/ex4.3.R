library(gapminder)
gapminder %>%  
  filter(year == 2002) %>%  
  ggplot() +  
  aes(x = lifeExp) +  
  aes(fill = continent) +
  theme_minimal() +  
  geom_dotplot(alpha = .5)  +
  geom_rug(col = "darkgrey") +  
  labs(x = "Life Expectancy (Years)") +
  labs(y = "Count") + 
  labs(title = "National Life Expectancy by Region",
       subtitle = "Data from 2002") +
  facet_wrap(facets = vars(continent)) +
  theme(legend.position = "none")
