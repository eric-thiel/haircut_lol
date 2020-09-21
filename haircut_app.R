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

get_old_haircut_data = function(){
    df = vroom::vroom("http://raw.githubusercontent.com/eric-thiel/haircut_lol/master/haircuts.csv.gz")
    return(df)
  }

ui = shinyUI(
  pageWithSidebar(
    headerPanel("Should I get a Haircut"),
  
    
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















