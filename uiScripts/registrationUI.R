registrationUI <- function(id){
  # Namespace based on id
  ns <- NS(id)
  
  # Ask for user input
  fluidPage(
    fluidRow(textInput(ns("name"),
                       label = NULL,
                       width = "300px",
                       placeholder = nameWidget)),
      
    fluidRow(textInput(ns("adress"),
                       label = NULL,
                       width = "300px",
                       placeholder = adressWidget)),
      
    fluidRow(textInput(ns("email"), 
                       label = NULL, 
                       width = "300px",
                       placeholder = emailWidget)),
      
    fluidRow(textInput(ns("rizivNumber"), 
                       label = NULL, 
                       width = "300px",
                       placeholder = rizivWidget)),
      
    fluidRow(actionButton(ns("register"), 
                          label = registerButton, 
                          block = TRUE,
                          styleclass = "danger",
                          style = "width:300px;")),
    
    align = "center"
  )
}