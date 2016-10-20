### COMMENTS BELOW
{#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
# 
#
# This WebApp is for the final project in DataProducts Course
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
}
library(shiny)

# Define UI for application 
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Census Data of 25 US States"),
  
  # Sidebar with a radio buttons to select census variable 
  sidebarLayout(
    sidebarPanel(
        radioButtons("button", label = h3("Census Variables"),
                     choices = list("Population" = 1, "Income" = 2,
                                    "Illiteracy" = 3, "Life Expectancy" = 4,
                                    "Murder" = 5, "HS Grad" = 6, "Frost" = 7,
                                    "Area (Size)" = 8
                                    ), selected = 4), 
        br(),
        h5("Select a variable above. The barchart on the right will then render the first 25
           alphabetical states and the corresponding data, based upon US census data.")
        ),
    
    # Show the plot
    mainPanel(
       plotOutput("Plot")
      # verbatimTextOutput("value")
    )
  )
))
