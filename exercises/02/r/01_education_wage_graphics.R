library(dplyr)

df = read.csv("../data/education.txt", sep = "\t")

df$Gender = factor(df$Gender)
levels(df$Gender) = list(Male=1, Female=2)

# Exclude entries which are incorrect nigh-certainly
df_clean = df %>%
  filter(!is.na(Gender)) %>% 
  filter(Education > 0) %>%
  filter(Wage > 100)

plot(
  df_clean$Education, 
  df_clean$Wage,
  xlab = "Education [years]",
  ylab = "Wage [CHF / month]",
  main = "Education vs wage in Switzerland",
)

df_men = df_clean %>% 
  filter(Gender == "Male")
df_women = df_clean %>%
  filter(Gender == "Female")

# Jesus Christ R's standard plotting is a mess. I miss ggplot. :(
plot(
  df_men$Education, 
  df_men$Wage,
  col = "blue",
  xlab = "Education [years]",
  ylab = "Wage [CHF / month]",
  main = "Education vs wage in Switzerland, per gender",
)
points(
  df_women$Education,
  df_women$Wage,
  col = "red",
)
legend(
  5, 8000,
  legend = c("Male","Female"), 
  col = c("blue", "red"),
  pch = c("o", "o"),
  ncol=1,
)