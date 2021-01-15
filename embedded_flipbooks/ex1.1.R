read_csv("wage_data.csv") ->
  wage_data

wage_data %>%
## filter out anyone who has never 
## worked and anyone who reported no earnings
  filter(Occupation != "53: Never Worked" & 
           Earnings > 0) %>%  
## create a new variable showing earnings
## per family member
  mutate(Earnings_per_member = Earnings / FamilySize) %>% 
## keep specific columns 
  select(Earnings, Earnings_per_member, Sex, Age, Education) %>% 
  filter(Earnings< 150000) ->
employed_under_150K
