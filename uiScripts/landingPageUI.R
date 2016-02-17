landingPageUI <- function(id){
  # Namespace based on id
  ns <- NS(id)
  
  # Two action buttons
  fluidPage(
    actionButton(ns("login"), 
                 label = loginButton, 
                 styleclass = "danger",
                 style = "width:300px;"),
    
    actionButton(ns("register"), 
                 label = registerButton, 
                 styleclass = "danger",
                 style = "width:300px;"),
    
    align = "center"
  )
}