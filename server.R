#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
        
  
  plot1<-renderPlot({
    
    n<-input$n
    f<-input$f
    numbers<-sample(1:f, n , replace=T)
    hist(numbers)
    
    })
  
  
  output$histogram<-plot1
  
})
