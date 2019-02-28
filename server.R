
library(shiny)

shinyServer(function(input, output) {
  
  values <- reactiveValues()
  
  observe({
    input$CalcCalories
    values$calories <- isolate({
      input$walking_hours * 400 + input$running_hours*800 + input$swimming_hours*1200         
    })
  })
  

  
  output$cc_result <- renderText({
    if(input$CalcCalories == 0) ""
    else
      paste("Your total calories consumption is: ", values$calories)
  })
  
  
})