read_csv("wage_data.csv") ->
  wage_data

wage_data %>%
  filter(Occupation != "53: Never Worked" & 
           Earnings > 0) %>%  
  mutate(Earnings_per_member = Earnings / FamilySize) %>% 
  select(Earnings, Earnings_per_member, Sex, Age, Education) %>% 
  filter(Earnings< 150000) ->
employed_under_150K
