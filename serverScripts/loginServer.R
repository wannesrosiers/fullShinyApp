loginServer <- function(input, output, server, id){
  # Namespace based on id
  ns <- NS(id)
  
  # Check conditions
  conditions <- reactiveValues()
  
  observeEvent(2 > 1,{
    conditions$userName    <- TRUE
    conditions$combination <- TRUE
  })
  
  observeEvent(input$login,{
    conditions$userName    <- (nchar(input$userName) > 0)
    conditions$combination <- dim(fetch(dbSendQuery(
      connect, paste('SELECT sk_id FROM users WHERE userName="',
                     input$userName,
                     '" AND password="',
                     input$password,
                     '"',
                     sep = "")), n = -1))[1]
  })
  
  # Messages that something went wrong
  output$incorrectUserName <- renderUI({
    if (!conditions$userName){
      text <-"<font color='red'>Please enter a name</font>"
      HTML(text)
    }
  })
  
  output$incorrectCombination <- renderUI({
    if (!conditions$combination){
      text <-"<font color='red'>Name and password do not match</font>"
      HTML(text)
    }
  })
  
  return(conditions)
}