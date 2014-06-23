library(shiny)

shinyUI(
  pageWithSidebar(
    headerPanel("Predict Miles Per Gallon"),
    mainPanel(
      h4('Documentation'),
      p('Previously, a model was built to predict mpg of cars using variables weight, cylinders, horse power and the type of transmission.'),
      p('How this model built is detailed in this pdf ', a('https://s3.amazonaws.com/coursera-uploads/user-1a43496ec6049fb35f1807db/972088/asst-4/4e5d6c80fa5011e3b879cd50ef213f6d.pdf')),
      p('The link to Rmd file is here', a('https://github.com/serkanserttop/regmods-proj-01')),
      h4('Predection Model Information'),
      p('By changing the parameters supplied below, the predicted mpg result will be returned for these values.')
    ),
    mainPanel(
      sliderInput("wt", label= h5("Car Weight (in pounds)"), min = 0, max = 7000, value = 3000 ),
      radioButtons("cyl", label=h5("Cylinders"), choices=list("4" = 4, "6" = 6, "8" = 8 ), selected = 4),
      sliderInput("hp", label= h5("Horse Power"), min = 0, max = 500, value = 100 ),
      radioButtons("am",label = h5("Tranmission"), choices = list("Auto" = 0, "Manual" = 1), selected = 0),
      h4(textOutput("predict"))
    )
  )
)

