employed_data = wage_data %>%
  filter(Occupation!="53: Never Worked" & Earnings > 0)

employed_data %>%
  mutate(Earnings_per_member=Earnings/FamilySize) %>% 
  select(Earnings, FamilySize, Earnings_per_member)

employed_under_150K = employed_data %>% 
  filter(Earnings<150000)

mean_age = employed_data%>%
  summarise(mean(Age)) %>% as.numeric()

