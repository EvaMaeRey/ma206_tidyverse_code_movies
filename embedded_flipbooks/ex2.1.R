employed_under_150K %>%
  ggplot() + 
  aes(x = Earnings) +
  geom_histogram(position = "dodge") +
  aes(fill = Sex) + 
  labs(x = "Earnings (USD)") +
  labs(y = "Count") + 
  labs(title = "Histogram of Earnings by Sex") +
  facet_wrap(facets = vars(Sex))
