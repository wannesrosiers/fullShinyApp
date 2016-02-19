registrationUI <- function(id){
  # Namespace based on id
  ns <- NS(id)
  
  # Ask for user input
  fluidPage(
    fluidRow(textInput(ns("name"),
                       label       = NULL,
                       width       = userInputWidth,
                       placeholder = nameWidget)),
      
    fluidRow(textInput(ns("adress"),
                       label       = NULL,
                       width       = userInputWidth,
                       placeholder = adressWidget)),
      
    fluidRow(textInput(ns("email"), 
                       label       = NULL, 
                       width       = userInputWidth,
                       placeholder = emailWidget)),
      
    fluidRow(textInput(ns("rizivNumber"), 
                       label       = NULL, 
                       width       = userInputWidth,
                       placeholder = rizivWidget)),
    
    fluidRow(div(class = "form-group shiny-input-container",
                 style = userInputStyleWidth,
                 tags$input(id          = ns("password"),
                            type        = "password",
                            class       = "form-control shinyjs-resettable shiny-bound-input",
                            placeholder = passwordPlaceHolder))),
    
    fluidRow(div(class = "form-group shiny-input-container",
                 style = userInputStyleWidth,
                 tags$input(id          = ns("password2"),
                            type        = "password",
                            class       = "form-control shinyjs-resettable shiny-bound-input",
                            placeholder = confirmPlaceHolder))),
    
    fluidRow(actionButton(ns("register"), 
                          label      = registerButton, 
                          block      = TRUE,
                          styleclass = "danger",
                          style      = userInputStyleWidth)),
    
    align = "center"
  )
}