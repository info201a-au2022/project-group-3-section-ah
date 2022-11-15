# Jiyoon Kim
# This is a data visualization chart for the question;
# How does the political party affiliation by state correspond with crime rates?
# We will be looking at data from 2020.
library("tidyverse")
library(ggplot2)

#import and organize dataset
hate_crime <- read.csv(file = 'data/hate_crime.csv') %>%
  rename(year = DATA_YEAR,
         state = STATE_NAME,
         state_po = STATE_ABBR) %>%
  filter(year == 2020)

political_party <- read.csv(file = 'data/political_party.csv') %>%
  rename(party = party_simplified) %>%
  mutate(state = str_to_title(state),
         party = str_to_title(party)) %>%
  mutate(state = recode(state, `District Of Columbia` = "District of Columbia")) %>%
  filter(year == 2020)

us_population_2020 <- read.csv(file = 'data/US_Population_2020.csv') %>%
  rename(state = State,
         population = X2020.Census) %>%
  select(state, population)

#how many hate crimes in each state
state_crimes <- hate_crime %>%
  group_by(state) %>%
  summarize(cases = n()) %>%
  left_join(us_population_2020, by = "state") %>%
  mutate(crime_ratio = cases / population) %>%
  select(state, crime_ratio)

#calculating party affiliation by state
state_by_votes_2020 <- political_party %>%
  group_by(state) %>%
  filter(candidatevotes == max(candidatevotes, na.rm = TRUE)) %>%
  select(state, party)

#join dataset
party_crimerates <- left_join(state_by_votes_2020, state_crimes, by = "state")


#chart
# include a brief paragraph, describing why you included the chart and what information it reveals, 
# including notable observations and insights from the chart.

#What am I gonna make?
# in 2020, party affiliation by state & hate crime rates. 
# calculate ratio!

# dem / re
# ----- | -----
# ----- | -----
# ----- | -----
# ----- | -----
# ----- | -----
# chart kinda like this
  
