employed_under_150K %>%
  ggplot() + 
  aes(x = Sex) +
  aes(fill = Sex) +
# bar is a special case of geom col
# It counts the number of observations
# And this is the y ie height of the column
  geom_bar() + 
  labs(x = "Earnings (USD)") +
  labs(y = "Count") + 
  labs(title = "Bar Plot of Total Earnings by Sex")
