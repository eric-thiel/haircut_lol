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
library(shinythemes)

header.true <- function(df) {
  names(df) <- as.character(unlist(df[1,]))
  df[-1,]
}


ui = fluidPage( theme = shinytheme("darkly"),
  pageWithSidebar(
    headerPanel("Should I get a Haircut?"),
    
    actionButton("button",label = "Push Me Once Per Day"),
  
    mainPanel(
      htmlOutput("mytable"),
      tags$style("#mytable {font-size:80px;
               position:relative;
               color: lightsalmon;
               }"),
      
    )
    
  ))


server = shinyServer(
  function(input,output,session){
    
   cap = eventReactive(input$button, {
   
     number = runif(1,0,1)
     ifelse(number > 0.97, "GET A HAIRCUT","DON'T GET A HAIRCUT")
   }) 
    
    output$mytable = renderText({   
    
 
  
      
    cap()
    })
  })


shinyApp(ui = ui, server = server)















