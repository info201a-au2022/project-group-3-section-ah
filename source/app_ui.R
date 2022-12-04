# Define UI
library("dplyr")
library("plotly")

hate_crimes <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-3-section-ah/main/data/hate_crime.csv") %>%
  rename(year = DATA_YEAR)


# Introduction page
introduction_page <- tabPanel(
  "Introduction",
  h2("Introduction"),
  p("...intro paragraph...")
)

# Sidebar
inputs <- sidebarPanel(
  
    sliderInput(
      inputID = year,
      label = "Choose year",
      min = 2000,
      max = 2020,
      value = range(hate_crimes$year)
    )
)

# Interactive Page

interactive_page <- tabPanel(
  "Interactive Plot",
  sidebarLayout(inputs,
                mainPanel(plotlyOutput("plot"))),
  p("...information about plot...")
)

ui <- navbarPage(
  titlePanel("Types of causes of hate crimes"),
  introduction_page,
  interactive_page  
)


