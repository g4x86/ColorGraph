# A Shiny app to plot network graph using ggnet2
#
# Run: shiny::runApp('~/Documents/Repos/programs/R/Plot-Network-Graph-App.R')

library(GGally)
library(intergraph)
library(ITNr)

ui <- fluidPage(
    fluidRow(
        style="text-align:center; color:#fbfcfc; vertical-align:center; background-color:#333333",
        titlePanel("Electrical Automotive Goods 2016 Network")
    ),
    fluidRow(
        style="height:100vh",
        plotOutput("myplot", width="100%", height="100%")
    )
)

server <- function(input, output)
{
    output$myplot <- renderPlot({
        data("ELEnet16")
        net <- asNetwork(ELEnet16)
        ggnet2(
            net,
            node.size=6,
            node.color="region",
            edge.size="weight",
            edge.color="darkgrey"
        )
    })
}

shinyApp(ui, server)
