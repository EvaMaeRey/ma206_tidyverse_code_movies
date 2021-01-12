g + 
  theme_minimal(base_size = 12) +
  aes(size = dist) +
  aes(color = dist) +
  scale_color_viridis_c() + 
  geom_smooth() +
  theme(legend.position = 
          "none") +
  labs(x = "Distance") +
  labs(y = "Speed") + #BREAK
  labs(title = "Cool plot!") +
  theme(plot.title.position = 
          "plot") #BREAK
