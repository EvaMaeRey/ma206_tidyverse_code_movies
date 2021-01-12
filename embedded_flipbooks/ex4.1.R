employed_under_150K %>%
  group_by(Education, Sex) %>%
  summarize(mean_earnings = mean(Earnings)) %>%
  mutate(Education = factor(Education, 
                            levels = c("Less than HS", 
                                       "HS Graduate", 
                                       "Some College/Associates", 
                                       "Bachelors", 
                                       "Masters", 
                                       "PhD/MD/JD"))) %>% 
  ggplot() + 
  aes(x = mean_earnings, y = Education) + 
  aes(fill = Sex) + 
  geom_col(position = "dodge") + 
  labs(x = "Mean Earnings (USD)") + 
  labs(y = "Count") + 
  labs(title = "Column Chart of Mean Earnings by Education",
       subtitle = "Divided by Share of Each Sex") + 
  scale_x_continuous(labels = scales::comma)
