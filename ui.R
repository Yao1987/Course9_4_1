#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Calories consumption Calculator"),
  
  sidebarLayout(
    sidebarPanel(
      numericInput("walking_hours",label=h4("Hours of walking"),min = 0, max = 1000,0),
      numericInput("running_hours",label=h4("Hours of running"),min = 0, max = 1000,0),
      numericInput("swimming_hours", label=h4("Hours of swimming"),min = 0, max = 1000,0), 
      actionButton("CalcCalories", label="Your Calories consumption is")
    ),
    

    mainPanel(
      tabsetPanel
      (
        tabPanel("Calculate the calories consumption",
                 p(h4("Calculation Results")),
                 textOutput("cc_result")
        ),
        tabPanel(
          "Documentation",
          p(h4("This app estimates the calories consumption")),
          br(),
          helpText("Fill in the hours of corresponding sports and click to calculate ")
        )

      )
    )
  ))
)