wage_data %>%
  filter(Occupation != "53: Never Worked" & 
           Earnings > 0) %>% 
  summarise(mean(Earnings)) %>% 
  as.numeric() ->
mean_earnings

#printing saved object
mean_earnings

wage_data %>%
  filter(Occupation != "53: Never Worked" & 
           Earnings > 0) %>% 
  group_by(Sex) %>% 
  summarise(mean = mean(Earnings),
            count = n()) ->
mean_earnings_by_sex

mean_earnings_by_sex
