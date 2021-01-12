employed_under_150K %>% 
  group_by(Age) %>% 
  summarise(Median = median(Earnings)) %>% 
  ggplot() + 
  aes(x = Age) +
  aes(y = Median) +
  geom_line() +
  labs(x="Age (Years)") + 
  labs(y="Earnings (USD)") +
  labs(title = "Age vs. Median Earnings")

employed_under_150K %>% 
  group_by(Age, Sex) %>% 
  summarise(Median = median(Earnings)) %>% 
  ggplot() + 
  aes(x = Age) +
  aes(y = Median) +
  aes(color = Sex) +
  geom_line() +
  labs(x="Age (Years)") + 
  labs(y="Earnings (USD)") +
  labs(title = "Age vs. Median Earnings by Sex")
