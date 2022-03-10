library(dplyr)

df = read.csv("../data/education.txt", sep = "\t")

summary(df)

df$Gender = factor(df$Gender)
levels(df$Gender) = list(Male=1, Female=2)

df %>% 
  group_by(Gender) %>% 
  summarise(
    mean_wage = mean(Wage),
    median_wage = median(Wage),
    stdev_wage = sqrt(var(Wage)),
    min_wage = min(Wage),
    max_wage = max(Wage),
  )

df %>% 
  group_by(Gender) %>% 
  summarise(
    mean_education = mean(Education),
    median_education = median(Education),
    stdev_education = sqrt(var(Education)),
    min_education = min(Education),
    max_education = max(Education),
  )


# Excluding incorrect data

df_clean = df %>%
  filter(!is.na(Gender)) %>% 
  filter(Education > 0) %>%
  filter(Wage > 100)

df_clean$Gender = as.numeric(df_clean$Gender)

cor(df_clean)

