# Jiyoon Kim
# This is a data visualization chart for the question;
# How does the political party affiliation by state correspond with crime rates?
# We will be looking at data from 2020.

#import necessary package libraries
library("tidyverse")
library(ggplot2)

#import and organize datasets
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

#join dataset to create chart
party_crimerates <- left_join(state_by_votes_2020, state_crimes, by = "state")


# Chart
politics_crime_chart <- ggplot(data = party_crimerates, 
                               aes(x = party, y = state, fill = crime_ratio)) + 
  geom_tile(color = "white") +
  labs(
    title = "Hate Crime Rates and Party Affiliation by State") +
  theme(axis.text = element_text(size = 5), 
        axis.title = element_text(size = 7),
        axis.title.x = element_text(size = 7),
        plot.title = element_text(size = 8),
        legend.key.size = unit(0.4, 'cm'),
        legend.title = element_text(size = 7),
        legend.text = element_text(size = 7))
  
# This is a heatmap chart to answer the research question:
# "How does the political party affilitation by state correspond with crime rates?".
# This reveals information regarding which party each state voted for presidency in the 2020 election
# It also calculates hate crime rates in 2020 by each state, 
# by calculating the number of crimes in each state divided by the population in each state.
# By looking at the chart, we can see that the states that voted for the Republican party is darker,
# While the states that voted for the Democrats are generally lighter in colour (less hate crime)
