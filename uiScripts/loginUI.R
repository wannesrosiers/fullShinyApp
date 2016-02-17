loginUI <- function(id){
  # Namespace based on id
  ns <- NS(id)
  
  # Two action buttons
  fluidPage(
    fluidRow(textInput(ns("userName"),
                       label = userNameWidget,
                       width = "300px")),
    
    fluidRow(passwordInput(ns("password"),
                           label = passwordWidget,
                           width = "300px")),
    
    fluidRow(actionButton(ns("login"), 
                          label = loginButton, 
                          styleclass = "danger",
                          style = "width:300px;")),
    
    align = "center"
  )
}