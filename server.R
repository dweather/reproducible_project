#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Define server logic required to draw a census data plot
shinyServer(function(input, output) {
 
  
  output$Plot <- renderPlot({
    var <- as.numeric(input$button)
    x <- as.character(state.abb )
    
    
    data <- data.frame(x, state.x77[,var])
    data$x <- as.character(data$x)
    colnames(data) <- c("State", names(data.frame(state.x77)[var]))
    data <- data[1:25,]
    
    # draw the bar chart with selected variable against first 25 states
    p <- ggplot(data, aes(x = State, y = data[,2])) + geom_bar(stat = "identity") + ylab(names(data[2]))
    print(p)
  })

})
