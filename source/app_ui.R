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
Takeaways <- tabPanel(
  "Key Takeaways",
  h2("The Three Key Takeaways"),
  p("1.) Although the 50 states party affiliation is 50% Democrat + D.C and 50% Republican, By looking at the chart, we can see that the states that voted for the Republican party is darker, While the states that voted for the Democrats are generally lighter in color which means less hate crime"),
  
  p("2.) Most states have punishments for Hate crimes, excluding Arkansas, Indiana, South Carolina, and Wyoming. and although most states have laws against things such as race, religion, and ethnicity. Some states start to dwindle on Disability, Gender, Sexual Orientation, and most of all Gender Identity."), 
  
  p("3.) The top 3 Hate crimes (documented) that were committed were Anti-Black or African American, Anti-Gay (Male), and Anti-Jewish. Which means that Racism, Anti-Semitism, and Homophobia are still prevalent, however that doesn't mean only those things exist, overall hatred is too big of a problem in our country")
)


map_sidebar_content <- sidebarPanel(selectInput("mapvar", label = "Variable to Map", 
                                                choices = list("Race, Religion, and Ethnicity" = "Race.Religion.Ethnicity","Disability" = "Disability"
                                                               ,"Gender" = "Gender", "Sexual Orientation" = "Sexual.Orientation", "Gender Identity" = "Gender.Identity")))

map_main_content <- mainPanel(plotlyOutput("map"))

map_panel <- tabPanel("Map",titlePanel("Protection by Identifier"), sidebarLayout(map_sidebar_content, map_main_content))
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
<<<<<<< HEAD
  #michael's interactive page goes here
  interactive_political_party #Jiyoon's interactive page
  
=======
  map_panel, #michael's interactive page goes here
  interactive_political_party, #Jiyoon's interactive page
  Takeaways, #michael's takeaways
>>>>>>> 7d16966d87e732ac3168efe863ed682083c05999
)


