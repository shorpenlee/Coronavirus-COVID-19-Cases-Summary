pgdat %>%
  group_by(player) %>%
  select(rk, player, ast, pts, stl, tov) %>%
  summarise(
    toln = n(),
    mast = mean(ast),
    mpts = mean(pts)
  ) %>%
  filter(mpts > 20 & mast > 10)
