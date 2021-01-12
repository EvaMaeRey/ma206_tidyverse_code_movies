employed_data = wage_data %>%
## Here, we will filter out any entries of individuals 
## with no occupation:
  filter(Occupation!="53: Never Worked" & Earnings > 0)

## Producing this:
employed_data %>%
## Using the mutate command, we will create a new   
## column displaying earnings per each family member: 
  mutate(Earnings_per_member=Earnings/FamilySize) %>% 
## And then select what we want to include: 
  select(Earnings, FamilySize, Earnings_per_member)

## We can also use the filter command to cut entries
## reporting income over 150k, removing outliers:
employed_under_150K = employed_data %>% 
  filter(Earnings<150000)

## Producing this:
employed_under_150K

