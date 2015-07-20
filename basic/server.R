library(shiny)

lex <- read.table("Lexique3.utf8.txt",
                header=T, as.is=T, comment.char='%', sep='\t', quote="|")

lex <- lex[1:1000,]

lex2 <- subset(lex, X9_freqfilms2>.5 & X15_nblettres<11, c('X1_ortho','X15_nblettres','X24_nbsyll','X9_freqfilms2','X16_nbphons', 'X4_cgram','X5_genre','X6_nombre'))


shinyServer(function(input, output) { output$table <- renderDataTable(lex, options = list(search = list(regex = TRUE))) })

#shinyServer(function(input, output) { output$table <- renderDataTable(lex) })
