cars %>% 
  ggplot() +
  aes(x = dist) +
  aes(y = speed) +
  geom_point() -> 
g
