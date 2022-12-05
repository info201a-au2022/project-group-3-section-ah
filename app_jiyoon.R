library("shiny")
library(plotly)

#shinyui

# The UI is the result of calling the `fluidPage()` layout function
ui <- fluidPage(
  "Political Party",
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "party",
                  label = "Political Party Identification",
                  choices = c("Democrat" = "Democrat", "Republican" = "Republican"),
                  selected = "Democrat"
                  )
    ),
    mainPanel(
      h3("Political Party Comparison"),
      p("plots, data tables, etc. go here",
        plotOutput(outputId = "political_chart")
      )
    )
  )
)

# server

source('./source/charts/political_party_chart.R')

Democrat_data <- party_crimerates %>%
  filter(party == "Democrat")

Republican_data <- party_crimerates %>%
  filter(party == "Republican") %>%
  na.omit()

Democrat <- ggplot(Democrat_data) + 
  aes(x = state, y = crime_ratio) + 
  geom_point() +
  theme(axis.text.x = element_text(angle = 45))

Republican <- ggplot(Republican_data) + 
  aes(x = state, y = crime_ratio) + 
  geom_point() + 
  theme(axis.text.x = element_text(angle = 45))

server <- function(input, output) {
  output$political_chart <- renderPlot({
    if(input$party == "Democrat") { Democrat }
    else { Republican }
  })
}

shinyApp(ui = ui, server = server)


