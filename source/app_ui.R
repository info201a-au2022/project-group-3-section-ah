# Define UI
library("shiny")
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

# Interactive Page - Qiqi

interactive_page <- tabPanel(
  "Interactive Plot",
  sidebarLayout(inputs,
                mainPanel(plotlyOutput("plot"))),
  p("...information about plot...")
)

# Interactive page 2 - Michael

# Interactive page 3 - political party (Jiyoon)
interactive_political_party <- tabPanel(
  "Political Party",
  titlePanel("Political Party"),
  sidebarLayout(
    sidebarPanel(
      textInput(inputId = "year",
                  label = "Year (1990 ~ 2018)")
    ),
    mainPanel(
      h3("Political Party Comparison"),
      p("plots, data tables, etc. go here",
        plotOutput(outputId = "politics_crime_chart")
      )
    )
  )
)


ui <- navbarPage(
  titlePanel("Hate Crimes in the U.S."),
  introduction_page,
  interactive_page, #qiqi's
  #michael's interactive page goes here
  interactive_political_party #Jiyoon's interactive page
  
)


