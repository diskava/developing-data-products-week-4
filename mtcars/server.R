#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#



library(shiny)
library(plotly)
head(mtcars)

library(shiny)
library(plotly)

shinyServer(function(input, output) {
    
    formulaText <- reactive({
        paste("mpg vs ", input$variable)
    })
    
    output$caption <- renderText({
        formulaText()
    })
    output$mpgPlot <- renderPlot({
        ggplot(mtcars, aes_string(y=input$variable, x="mpg")) + geom_point()+ facet_wrap(~cyl)
    })
    
})