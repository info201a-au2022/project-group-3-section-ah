library(tidyverse)
hatecrime <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-3-section-ah/main/data/hate_crime.csv")
hatecrime <- hatecrime %>% group_by(BIAS_DESC)

State <- c(hatecrime$STATE_NAME)
Bias <- c(hatecrime$BIAS_DESC)

Crime <- data.frame(State, Bias)

Crime <- group_by(Crime, Crime$Bias) %>% filter(n() > 0)

Table <- table(as.character(Crime$State, Crime$Bias))

View(Table)
