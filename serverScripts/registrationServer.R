registrationServer <- function(input, output, server, id){
  # Namespace based on id
  ns <- NS(id)
  
  # Create random authentication/password
  authentication <- makeRandomString()
  
  # Bind all items to a dataframe
  newUser <- data.frame(userName = c(input$name),
                        password = c(authentication),
                        authentication = c(authentication),
                        adress = c(input$adress),
                        email = c(input$email),
                        rizivNumber = c(input$rizivNumber))
  
  # Write to database
  dbWriteTable(connect_simul, value = tempData, name = part, append = TRUE, row.names = FALSE)
}