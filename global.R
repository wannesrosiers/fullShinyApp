####################
# Load scripts
####################
# Global elements = config and packages
for (nm in list.files("globalScripts")) {
  source(file.path("globalScripts", nm))
}

# Functions
for (nm in list.files("functionScripts")) {
  source(file.path("functionScripts", nm))
}

# UI elements
for (nm in list.files("uiScripts")) {
  source(file.path("uiScripts", nm))
}

# Server elements
for (nm in list.files("serverScripts")) {
  source(file.path("serverScripts", nm))
}