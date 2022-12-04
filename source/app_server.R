# Define server
library("dplyr")
library("plotly")

hate_crimes <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-3-section-ah/main/data/hate_crime.csv") %>%
  rename(year = DATA_YEAR)

server <- function(input, output) {
  
  output$plot <-renderPlot ({
    
    # Filter based on year input
    hate_crimes <- hate_crimes %>%
      filter(year == input$year)
    
    #Group and summarise data based on motivations/biases.
    biases_grouped_df <- hate_crimes %>%
      group_by(BIAS_DESC) %>%
      summarise(num_biases = n())
    
    # Split the BIAS_DESC column into a list
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
      mutate(year = input$year)
      
    
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
  })
  
  
}
