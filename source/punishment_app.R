library(plotly)
library(dplyr)
library(stringr)
library("shiny")

#MAP MAKING
build_map <- function(data, map.var) {
  
  l <- list(color = toRGB("white"), width = 2)
  
  g <- list(
    scope = 'usa',
    projection = list(type = 'albers usa'),
    showlakes = TRUE,
    lakecolor = toRGB('white')
  )
  
  var.equation <- paste0('~', map.var)
  
  p <- plot_geo(data, locationmode = 'USA-states') %>%
    add_trace(
      z = data[,map.var], text = ~state, locations = ~code,
      color = data[,map.var], colors = 'Purples'
    ) %>%
    colorbar(title = "Color Title") %>%
    layout(
      title = str_to_title(map.var),
      geo = g
    )
  return(p)
}
##### UI
map_sidebar_content <- sidebarPanel(selectInput("mapvar", label = "Variable to Map", 
                                                choices = list("Race, Religion, and Ethnicity" = "Race.Religion.Ethnicity","Disability" = "Disability"
                                                               ,"Gender" = "Gender", "Sexual Orientation" = "Sexual.Orientation", "Gender Identity" = "Gender.Identity")))

map_main_content <- mainPanel(plotlyOutput("map"))

map_panel <- tabPanel("Map",titlePanel("Protection by Identifier"), sidebarLayout(map_sidebar_content, map_main_content))

ui <- navbarPage("Hate Crimes by State", map_panel)

##### SERVER
state_codes <- read.csv('./data/state_codes.csv', stringsAsFactors = FALSE)
df1 <- read.csv("./data/Hate_crime_laws_by_state.csv")


server <- function(input, output) 
{ 
  
  output$map <- renderPlotly({ 
    return(build_map(df1, input$mapvar))
  }) 
  
}
##### APP
shinyApp(ui = ui, server = server)