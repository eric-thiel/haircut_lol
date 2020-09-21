### function to put stats online

### add passing attempts and rushing attempts????????????????
### big brain SZN


library("shiny")   
library(DT)
library(googlesheets4)
library(shinycssloaders)
library(dplyr)
library(rdrop2)
library(readr)
library(vroom)
library(tidyverse)



header.true <- function(df) {
  names(df) <- as.character(unlist(df[1,]))
  df[-1,]
}



ui = shinyUI(
  pageWithSidebar(
    headerPanel("Should I get a Haircut")
    
    
    mainPanel(
      DT::dataTableOutput("mytable"),
    )
    
  ))


server = shinyServer(
  function(input,output,session){
    
    value = runif(1, 0, 1)

    output$mytable = DT::renderDataTable({   
   
      
    })
  })


shinyApp(ui = ui, server = server)















