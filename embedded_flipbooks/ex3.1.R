employed_under_150K %>% 
  group_by(Age, 
           Sex) %>% 
  summarise(Median = median(Earnings)) %>% 
  ggplot() +
  aes(x = Age) + 
  aes(y = Median) +
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
  scale_y_log10() + 
  theme_bw() + #ROTATE
  theme_light() + #ROTATE
  theme_gray() + #ROTATE
  theme_void() + #ROTATE
  theme_linedraw() + #ROTATE
  theme_minimal() + #ROTATE
  theme_classic() + #ROTATE
  theme_dark() #ROTATE
