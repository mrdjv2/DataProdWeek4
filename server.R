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
        
        #n<-as.numeric(renderText(input$slider1))
        #s<-renderText(input$slider2)
        
        #rolls<-sample(1:6, 6, replace = TRUE)
   
  plot1<-renderPlot({
    
    n<-input$n
    s<-input$s
    numbers<-sample(1:s, n , replace=T)
    hist(numbers)
    
    })
  
  #plot<-renderPlot({hist(rolls)})
  
  
  output$histogram<-plot1
  #output$rolls<-n
  
})
