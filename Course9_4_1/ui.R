#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Calories consumption Calculator"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      numericInput("walking_hours",label=h4("Hours of walking"),min = 0, max = 1000,0),
      numericInput("running_hours",label=h4("Hours of running"),min = 0, max = 1000,0),
      numericInput("swimming_hours", label=h4("Hours of swimming"),min = 0, max = 1000,0), 
      actionButton("CalcCalories", label="Your Calories intake is")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel
      (
        tabPanel("Calculate the calories consumption",
                 p(h4("Calculation Results")),
                 textOutput("cc_result")
        )

      )
    )
  ))
)