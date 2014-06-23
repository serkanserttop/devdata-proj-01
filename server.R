source("model.R")

amConvert = list( "0" = "automatic", "1" = "manual");

shinyServer(
  function(input, output) {
    output$predict <- renderText({
      paste(
        'A car with', amConvert[input$am], ' transmission, weighing', input$wt, 'pounds, that has ',
        input$cyl, 'cylinders and', input$hp, ' horse power is predicted to have', 
        modelPredict(input$wt, input$cyl, input$hp, input$am), 'mpg')
  })
})