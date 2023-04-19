#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

pkgload::load_all()

# Run the application 
shinyApp(ui = app_ui, server = app_server)
