# Qiqi Liang
# This is a data visualization chart for the question;
# What are the causes and motivations for hate crimes?
# This is the data from the year 2020. 
install.packages("ggplot2")
install.packages("plotly")
library("dplyr")
library("tidyr")
library("ggplot2") 
library("plotly")

# Load hate crimes dataset. Filter year to 2020

hate_crimes <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-3-section-ah/main/data/hate_crime.csv") %>%
    rename(year = DATA_YEAR) %>%
    filter(year == 2020)

# Group and summarise data based on motivations/biases.
# The rows for some of the columns look like this: "Anti-Asian;Anti-Hispanic;Anti-Black"
# We need to separate this to get an accurate count of biases
biases_grouped_df <- hate_crimes %>%
    group_by(BIAS_DESC) %>%
    summarise(num_biases = n())

# Split the BIAS_DESC column into a list -> "[Anti-Asian, Anti-Hispanic, Anti-Black]"
# using a semi-colon delimeter
# "Unnest" to make each element in the list its own row
biases_grouped_df_splited <- biases_grouped_df %>%
    mutate(biases_array = strsplit(BIAS_DESC, ";")) %>%
    unnest(biases_array)

# Count unique biases and store in new dataframe to plot
final_biases_df <- biases_grouped_df_splited %>%
    group_by(biases_array)%>%
    summarise(new_num_biases = n())

# Convert to percentages

final_biases_df <- final_biases_df %>%
    mutate(proportion = (new_num_biases/sum(new_num_biases))*100) %>%
    mutate(year = "2020")

# Simple bar plot
fig <- plot_ly(data = final_biases_df, x = ~biases_array, y = ~proportion, type = 'bar') %>%
    layout(xaxis = list(autotypenumbers = 'strict', title = 'Types of biases'),
         yaxis = list(title = 'Proportion'),
         plot_bgcolor='#e5ecf6',
         xaxis = list(
           zerolinecolor = '#ffff',
           zerolinewidth = 2,
           gridcolor = 'ffff'),
         yaxis = list(
           zerolinecolor = '#ffff',
           zerolinewidth = 2,
           gridcolor = 'ffff'))




