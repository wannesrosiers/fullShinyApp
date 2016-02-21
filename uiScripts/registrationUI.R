registrationUI <- function(id){
  # Namespace based on id
  ns <- NS(id)
  
  # Ask for user input
  fluidPage(
    fluidRow(textInput(ns("name"),
                       label       = NULL,
                       width       = userInputWidth,
                       placeholder = nameWidget)),
    
    fluidRow(uiOutput(ns("incorrectUserName"))),
      
    fluidRow(textInput(ns("adress"),
                       label       = NULL,
                       width       = userInputWidth,
                       placeholder = adressWidget)),
    
    fluidRow(uiOutput(ns("incorrectAdress"))),
      
    fluidRow(textInput(ns("email"), 
                       label       = NULL, 
                       width       = userInputWidth,
                       placeholder = emailWidget)),
    
    fluidRow(uiOutput(ns("incorrectEmail"))),
      
    fluidRow(textInput(ns("rizivNumber"), 
                       label       = NULL, 
                       width       = userInputWidth,
                       placeholder = rizivWidget)),
    
    fluidRow(uiOutput(ns("incorrectRizivNumber"))),
    
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
    
    fluidRow(uiOutput(ns("incorrectPassword"))),
    
    fluidRow(actionButton(ns("register"), 
                          label      = registerButton, 
                          block      = TRUE,
                          styleclass = "danger",
                          style      = userInputStyleWidth)),
    
    align = "center"
  )
}