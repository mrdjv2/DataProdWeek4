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
  titlePanel("Simulation of throwing a die with s sides n times"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
            sliderInput("n", "Number of rolls", 1, 10000, 1),
            sliderInput("s", "Number of sides of the die", 4, 100, 4),
      submitButton("Start")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("histogram")
    )
  )
))
