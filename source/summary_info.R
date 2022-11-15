# summary_info.R 
# A source file that takes in a dataset and returns a list of info about it:
hate_crime <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-3-section-ah/main/data/hate_crime.csv")

summary_info <- list()

#calculate number of observations
summary_info$num_observations <- nrow(hate_crime)

#calculate number of variables
summary_info$num_variables <- ncol(hate_crime)

#calculate the year when hate crimes happened the most
summary_info$max_occurrence_year <- hate_crime %>%
  group_by(DATA_YEAR) %>%
  summarize(cases_per_year = n()) %>%
  filter(cases_per_year == max(cases_per_year, na.rm = TRUE)) %>%
  select(DATA_YEAR) %>% pull(DATA_YEAR)

#calculate the state where hate crimes happened the most
summary_info$max_crime_state <- hate_crime %>%
  group_by(STATE_NAME) %>%
  summarize(cases_per_state = n()) %>%
  filter(cases_per_state == max(cases_per_state, na.rm = TRUE)) %>%
  select(STATE_NAME) %>% pull(STATE_NAME)

#calculate what kind of group becomes the target of hate crime the most
summary_info$max_crime_bias <- hate_crime %>%
  group_by(BIAS_DESC) %>%
  summarize(cases_per_bias = n()) %>%
  filter(cases_per_bias == max(cases_per_bias, na.rm = TRUE)) %>%
  select(BIAS_DESC) %>% pull(BIAS_DESC)