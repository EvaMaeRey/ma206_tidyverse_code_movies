read_csv("wage_data.csv") ->
  wage_data

wage_data %>%
## First, we will filter out anyone who has never 
## worked and anyone who reported no earnings.
  filter(Occupation != "53: Never Worked" & 
           Earnings > 0) %>%  
## Next, we will create a new variable showing earnings
## per family member.
  mutate(Earnings_per_member = Earnings / FamilySize) %>% 
## We then choose a few specific columns from our 
## dataset to look at.
  select(Earnings, Earnings_per_member, Sex, Age, Education) %>% 
  filter(Earnings< 150000) ->
employed_under_150K
