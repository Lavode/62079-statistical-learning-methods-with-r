library(dplyr)
library(tidyr)


df = read.csv("../data/simpson.txt", sep = " ")

df$Treatment = factor(df$Treatment)

df$Size = factor(df$Size)
levels(df$Size) = list(small = 1, large = 2)

df$Result = factor(df$Result)
levels(df$Result) = list(cured = 1, failed = 2)

# 3. Most promising treatement with no further information
df %>% 
  group_by(Treatment, Result) %>%
  summarise(n = n()) %>%
  pivot_wider(
    names_from = Result,
    values_from = n
  ) %>%
  mutate(success_ratio = cured / (cured + failed))

df %>% 
  group_by(Treatment, Size, Result) %>%
  summarise(n = n()) %>%
  pivot_wider(
    names_from = Result,
    values_from = n
  ) %>%
  mutate(success_ratio = cured / (cured + failed))


