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
    
    # Application title
    titlePanel("The mtCars Data - Miles per Gallon vs Other Variables"),
    
    sidebarPanel(
        
        selectInput("variable", "Variable:", 
                    c("Horse Power"="hp",
                      "Cylinders" = "cyl",
                      "Displacement"="disp",
                      "Transmission" = "am",
                      "Gears" = "gear"))
    ),
    
    mainPanel(
        # Use header level 3 to format label
        h3(textOutput("caption")),
        
        # Show the plotted data
        plotOutput("mpgPlot")
    )
))