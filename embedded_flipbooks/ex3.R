employed_under_150K %>% 
  group_by(Age, 
           Sex) %>% 
  summarise(Median = median(Earnings)) %>% 
  ggplot(aes(x = Age, 
             y=Median)) +
  geom_line() +
  aes(color = Sex) +
  labs(x="Age (Years)") +
  labs(y="Earnings (USD)") +
  labs(color = "Sex of respondent") +
  labs(title = "Age vs. Median Earnings by Sex") +
  scale_x_continuous(limits=c(0,100), 
                     breaks=c(seq(from = 0,
                                  to = 100,
                                  by = 10))) +
  scale_y_continuous(limits=c(0,70000), 
                     breaks=c(10000, 30000, 50000)) +
  theme_bw() +
  theme_dark() +
  theme_light() +
  theme_gray() +
  theme_void() +
  theme_linedraw() +
  theme_minimal() +
  theme_classic()
