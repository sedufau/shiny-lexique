library(shiny)

# Define UI for dataset viewer application
shinyUI(
  fluidPage(
  
    # Application title
    titlePanel("OpenLexique"),
  
    sidebarLayout(
      sidebarPanel(
        selectInput("dataset", "Choose a dataset:", 
                    choices = c("Lexique3.80", "Brulex"))
      ),
       
    mainPanel(
      h3(textOutput("caption", container = span)),

      fluidRow(dataTableOutput(outputId="table"))
    )
  )
  )
)

