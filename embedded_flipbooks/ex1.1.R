employed_data = wage_data %>%
## Here, we will filter out any entries of individuals with 
## no occupation:
  filter(Occupation!="53: Never Worked" & Earnings > 0)

## Producing this:
employed_data %>%
## Using the mutate command, we will create a new column  
## displaying earnings per member of each famil:; 
  mutate(Earnings_per_member=Earnings/FamilySize) %>% 
## And then select the columns we want to include in our output: 
  select(Earnings, FamilySize, Earnings_per_member)

employed_under_150K = employed_data %>% 
## We can also use the filter command to only look at entries
## reporting income under $150k, removing outliers:
  filter(Earnings<150000)

## Producing this:
employed_under_150K

