library(shiny)
library(tidyverse)
options(scipen = 999)
library(readxl)
sm_4 <- read_excel("Cierra's Website/sm 4.xlsx")
# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Social Media Usuage Throughout the Years"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
      sidebarPanel(
        selectInput(inputId = "VarX",
                    label = "Year",
                    choices =list("2005","2006","2008","2009","2010","2011","2012",
                                 "2013","2014","2014","2015", "2016", "2018", 
                                 "2019", "2021")),
        selectInput(inputId = "VarY",
                    label = "Age Range",
                    choices = list("18-29", "30-49", "50-64", "65"))
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("distPlot"), 
           verbatimTextOutput("correlation")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
  output$scatter <- renderPlot({
    FinalData <- sm_4[c(input$VarX, input$VarY)]
    ggplot(data = FinalData, aes(x=FinalData[,1], y=FinalData[,2])) +
      geom_point() +
      geom_smooth(method = "lm", se = FALSE) +
      labs(x=colnames(FinalData)[1],
           y=colnames(FinalData)[2])
    
    })

  output$cor.test <- renderPrint({
      
      FinalData2 <- sm_4[ , c(input$VarX, input$VarY)]
      
      cor.test(FinalData2[, 1], FinalData2[, 2])
  })
  }

# Run the application 
shinyApp(ui = ui, server = server)
