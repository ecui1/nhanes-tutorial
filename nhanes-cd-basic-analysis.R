# Some basic analyses using the NHANES 2003-2006 data

# load packages
library(tidyverse)

# load data
df <- readRDS("./data/nhanes-cd-basic.rds")

# demographic information
table(df$Race)
table(df$Gender)
summary(df$Age)
summary(df$BMI)

# plot the distribution of age
hist(df$Age, xlab = "Age (years)", main = "Histogram of Age")

# generalized linear model
## age and all-cause mortality
summary(f0 <- glm(mortstat ~ Age, data = df))

## age, BMI and all-cause mortality
summary(f1 <- glm(mortstat ~ Age + BMI, data = df))
