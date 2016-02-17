shinyServer(function(input, output, session) {
  
  ##########
  # Flow
  ##########
  
  # Pressing buttons on landing page
  observe({
    toggle(id = "landingPage", condition = ((input[["landing-login"]] == 0) && (input[["landing-register"]] == 0)))
  })
  
  observe({
    toggle(id = "loginPage", condition = (input[["landing-login"]] == 1))
  })
  
  observe({
    toggle(id = "registerPage", condition = (input[["landing-register"]] == 1))
  })
  
  ###############
  # Sidebar
  ###############
  
})