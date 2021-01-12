employed_under_150K %>%
  ggplot() + 
  aes(x = Age) +
  aes(y = Earnings) +
  aes(color = Sex) +
  geom_point(alpha = 0.2) +
  labs(x = "Age (Years)") +
  labs(y = "Count") + 
  labs(title = "Age vs. Earnings by Sex") +
  facet_wrap(facets = vars(Sex)) +
  geom_smooth(color = "black")
