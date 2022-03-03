library(dplyr)

df = read.csv("../data/education.txt", sep = "\t")
df$Gender = factor(df$Gender)
levels(df$Gender) = list(Male=1, Female=2)

summary(df)
