library(shiny)

# Define UI for app that draws a histogram ----
ui <- fluidPage(
  titlePanel("My Shiny App"),
  sidebarLayout(
    sidebarPanel(
      img(src ="rstudio3.jpeg", height =140, width =325)
    ),
    mainPanel(
      p("p creates a paragraph of text."),
      p("Starts a new paragraph"),
      strong("strong() makes bold text."),
      em("em() creates italicized (i.e, emphasized) text."),
      br(),
      code("code displays your text similar to computer code"),
      div("div creates segments of text with a similar style. This division of text is all blue because I passed the argument 'style=color:blue' to div"),
      p("span does the same thing as div, but it works with",
        span("groups of words", style ="color:blue"),
        "that appear inside a paragraph.")
    )
  )
)

#Define server logic ----
server <- function(input,output){
}

# Create Shiny app ----
shinyApp(ui = ui, server = server)
