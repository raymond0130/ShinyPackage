library(shiny)
library(ggplot2)



shinyUI(pageWithSidebar(
  
  headerPanel("Data visual of Iris"),
  sidebarPanel(
    
    selectInput('x', 'X', names(iris)),
    selectInput('y', 'Y', names(iris)[2]),
    selectInput('color', 'Color', c('None', names(iris))),
    
    checkboxInput('smooth', 'Smooth')
  ),
  
  mainPanel(
    plotOutput('plot')
  )
))