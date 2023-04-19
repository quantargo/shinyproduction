#' Creates the User Interface for the "Old Faithful Geyser Data" Application
#'
#' This function creates the user interface for the "Old Faithful Geyser Data" application. 
#' It generates a fluid page that contains a title panel, a sidebar panel with a slider 
#' input for the number of bins, and a main panel that displays a plot of the 
#' generated distribution.
#'
#' @importFrom shiny fluidPage titlePanel sidebarLayout sidebarPanel sliderInput mainPanel plotOutput
#' @param input The input variable from the user interface.
#' @param output The output variable from the user interface.
#' @rdname app
#' @examples
#' \dontrun{
#'   shinyApp(ui = app_ui, server = app_server)
#' }
#' @export
app_ui <- function() {
  fluidPage(
    
    # Application title
    titlePanel("Old Faithful Geyser Data"),
    
    # Sidebar with a slider input for number of bins 
    sidebarLayout(
      sidebarPanel(
        sliderInput("bins",
                    "Number of bins:",
                    min = 1,
                    max = 50,
                    value = 30)
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
        plotOutput("distPlot")
      )
    )
  )
}

#' @rdname app
#' @importFrom shiny renderPlot
#' @importFrom graphics hist
#' @export
app_server <- function(input, output) {
    output$distPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        x    <- datasets::faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white')
    })
}

