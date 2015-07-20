library(shiny)

lexique <- read.csv('Lexique380.utf8.csv')
brulex <- read.csv('Brulex.utf8.csv')         


# Define server logic required to summarize and view the selected
# dataset
shinyServer(function(input, output) {
  
  datasetInput <- reactive({
    switch(input$dataset,
           "Lexique3.80" = lexique,
           "Brulex" = brulex)
  })

  output$caption <- renderText({
    input$dataset
  })
  
  output$table <- renderDataTable(datasetInput(), options = list(search = list(regex = TRUE))) 
})
  


#shinyServer(function(input, output) { output$table <- renderDataTable(lexique, options = list(search = list(regex = TRUE))) })

#shinyServer(function(input, output) { output$table <- renderDataTable(lex) })
