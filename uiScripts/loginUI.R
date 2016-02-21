loginUI <- function(id){
  # Namespace based on id
  ns <- NS(id)
  
  # Two action buttons
  fluidPage(
    fluidRow(textInput(ns("userName"),
                       label       = NULL,
                       width       = userInputWidth,
                       placeholder = userNameWidget)),
    
    fluidRow(uiOutput(ns("incorrectUserName"))),

    fluidRow(div(class = "form-group shiny-input-container",
                 style = userInputStyleWidth,
                 tags$input(id          = ns("password"),
                            type        = "password",
                            class       = "form-control shinyjs-resettable shiny-bound-input",
                            placeholder = passwordPlaceHolder))),
    
    fluidRow(uiOutput(ns("incorrectCombination"))),
    
    fluidRow(actionButton(ns("login"), 
                          label      = loginButton, 
                          styleclass = "danger",
                          style      = userInputStyleWidth)),
    
    align = "center"
  )
}