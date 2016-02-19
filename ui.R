##############
# Header
##############

dbHeader <- dashboardHeader(title = applicationTitle,
                            titleWidth = titleWidth)

###############
# Sidebar
###############

sidebar <- dashboardSidebar(
  width = sidebarWidth
)

#############
# Body
#############

body <- dashboardBody(
  
  # Add shinyJS to allow mini-sidebar
  shinyjs::useShinyjs(),
  
  # Include custom css
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "AdminLTE-2.0.6/AdminLTE.min.css"),
    tags$link(rel = "stylesheet", type = "text/css", href = "AdminLTE-2.0.6/_all-skins.min.css"),
    tags$link(rel = "stylesheet", type = "text/css", href = "shinydashboard-0.5.1/shinydashboard.css"),
    tags$link(rel = "stylesheet", type = "text/css", href = "custom.css")
  ),
  
  # landingPage
  div(id = "landingPage",
      landingPageUI("landing")),
  
  # Login form
  div(id = "loginPage",
      loginUI("login")),
  
  # Registration form
  div(id = "registerPage",
      registrationUI("register")
  )

)

###################################
# Merge pieces to complete ui
###################################

ui <- dashboardPage(skin    = "blue",
                    header  = dbHeader,
                    sidebar = sidebar,
                    body    = body)