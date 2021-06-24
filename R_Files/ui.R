library(shiny)
library(plotly)

shinyUI(fluidPage(
  
  titlePanel("Case History of the Coronavirus (COVID-19)"),
  h3(tags$a(href="https://satviktiwari.github.io/tracker/", "CLICK HERE FOR COMPLETE VACCINATION TRACKER DASHBOARD!")),
  fluidRow(
    column(
      4, 
      selectizeInput("country", label=h5("Country"), choices=NULL, width="100%")
    ),
    column(
      4, 
      selectizeInput("state", label=h5("State / Province"), choices=NULL, width="100%")
    ),
    column(
      4, 
      checkboxGroupInput(
        "metrics", label=h5("Selected Metrics"), 
        choices=c("Confirmed", "Deaths", "Recovered"), 
        selected=c("Confirmed", "Deaths", "Recovered"), width="100%")
    )
  ),
  fluidRow(
    plotlyOutput("dailyMetrics")
  ),
  fluidRow(
    plotlyOutput("cumulatedMetrics")
  )
))