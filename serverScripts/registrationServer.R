registrationServer <- function(input, output, server, id){
  # Namespace based on id
  ns <- NS(id)
  
  # Check conditions
  conditions <- reactiveValues()
  
  observeEvent(2 > 1,{
    conditions$userName   <- TRUE
    conditions$adress     <- TRUE
    conditions$email      <- TRUE
    conditions$rizivNumber <- TRUE
    conditions$password   <- TRUE
  })
  
  observeEvent(input$register,{
    conditions$userName    <- (nchar(input$name) > 0)
    conditions$adress      <- (nchar(input$adress) > 0)
    conditions$email       <- ((nchar(input$adress) > 0) && (validateMail(input$email)))
    conditions$rizivNumber <- (nchar(input$rizivNumber > 0) && (!is.na(as.numeric(input$rizivNumber))))
    conditions$password    <- ((nchar(input$password) > 0) && (input$password == input$password2))
    
    if (conditions$userName && conditions$adress && conditions$email && conditions$rizivNumber && conditions$password){
      # Bind all items to a dataframe
      newUser <- data.frame(userName = c(input$name),
                            password = c(input$password),
                            adress = c(input$adress),
                            email = c(input$email),
                            rizivNumber = c(input$rizivNumber))
      
      # Write to database
      dbWriteTable(connect, value = newUser, name = "users", append = TRUE, row.names = FALSE)
    }
  })
  
  # Messages that something went wrong
  output$incorrectUserName <- renderUI({
    if (!conditions$userName){
      text <-"<font color='red'>Please enter a name</font>"
      HTML(text)
    }
  })
  
  output$incorrectAdress <- renderUI({
    if (!conditions$adress){
      text <-"<font color='red'>Please enter an adress</font>"
      HTML(text)
    }
  })
  
  output$incorrectEmail <- renderUI({
    if (!conditions$email){
      text <-"<font color='red'>Please enter a valid e-mail adress</font>"
      HTML(text)
    }
  })
  
  output$incorrectRizivNumber <- renderUI({
    if (!conditions$rizivNumber){
      text <-"<font color='red'>Please enter a valid riziv number</font>"
      HTML(text)
    }
  })
  
  output$incorrectPassword <- renderUI({
    if (!conditions$password){
      text <-"<font color='red'>Passwords do not match</font>"
      HTML(text)
    }
  })
  
  return(conditions)
}