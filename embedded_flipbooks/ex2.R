employed_under_150K%>%
  ggplot() + 
  aes(x = Earnings) +
  aes(fill = Sex) + 
## I would like to make the fill part rotate, 
## but only after the rest has been flipped through
  geom_histogram(position = "dodge") +
## Rotate dif plot types
  labs(x = "Earnings (USD)") +
  labs(y = "Count") + 
  labs(title = "Histogram of Earnings by Sex")
