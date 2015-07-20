library(shiny)


lex <- read.table("Lexique3.utf8.txt",
                  header=T, as.is=T, comment.char='%', sep='\t', quote="|")

lex <- lex[1:1000,]

shinyUI(fluidPage(
    titlePanel('Lexique'),
#      fluidRow(column(4,
#                       selectInput("X1_ortho", 
#                                   "Ortho:", 
#                                   c('All', unique(as.character(lex$X1_ortho)))
#                                   )
#                       )
#                ),
    fluidRow(
      dataTableOutput(outputId="table")
    )
)
)
