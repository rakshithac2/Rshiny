#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)
library(semantic.dashboard)
library(tidyverse)
 
# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Top Accident Prone Streets in Cambridge"),
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout(
      sidebarPanel(
        selectInput("week",
                    label ="Day of the week",
                    choices = c("Sunday",
                                "Monday", 
                                "Tuesday", 
                                "Wednesday",
                                "Thursday",
                                "Friday",
                                "Saturday",
                                "All"),
                    selected = "All"),
        
        sliderInput("topStreet",
                    "Top Accident prone Streets",
                    min = 1, 
                    max = 10,
                    value = 5)
      ),
      
      # Show a plot of the generated distribution
      mainPanel(
         plotOutput("barGraph")
      )
   )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
   
  crashData <- read.csv("C:/Users/raksh/Desktop/studies/Data visuialization/Police_Department_Crash_Data_-_Historical.csv")
  View(crashData)    
  
  output$barGraph <- renderPlot({
    
    if(input$week == "All")
    {
    # draw the bar graph
    x <- input$topStreet
    factor(crashData$Street.Name)
    SubsetTable <- table(crashData$Street.Name)
    SubsetDataframe <- as.data.frame(SubsetTable)
    orderTable <- SubsetDataframe[order(-SubsetDataframe[,2], SubsetDataframe[,1]),]
    topTable <- head(orderTable,x)
    barplot(topTable$Freq, ylim = c(0,2000), col = "pink", 
            main = paste("Top ", x," Accidental Streets"), xlab = "Street Names", ylab = "Count")
    axis(1, at=seq(length(topTable$Var1)),labels=topTable$Var1,cex.axis=0.75)
    }
    
    else if(input$week == "Sunday")
    {
      # draw the bar graph
      x <- input$topStreet
      newData <- crashData %>% filter(Day.Of.Week == "Sunday")
      factor(newData$Street.Name)
      SubsetTable <- table(newData$Street.Name)
      SubsetDataframe <- as.data.frame(SubsetTable)
      orderTable <- SubsetDataframe[order(-SubsetDataframe[,2], SubsetDataframe[,1]),]
      topTable <- head(orderTable,x)
      barplot(topTable$Freq, col = "pink", 
              main = paste("Top ", x," Accidental Streets"), xlab = "Street Names", ylab = "Count")
      axis(1, at=seq(length(topTable$Var1)),labels=topTable$Var1,cex.axis=0.75)
    }
    else if(input$week == "Monday")
    {
      # draw the bar graph
      x <- input$topStreet
      newData <- crashData %>% filter(Day.Of.Week == "Monday")
      factor(newData$Street.Name)
      SubsetTable <- table(newData$Street.Name)
      SubsetDataframe <- as.data.frame(SubsetTable)
      orderTable <- SubsetDataframe[order(-SubsetDataframe[,2], SubsetDataframe[,1]),]
      topTable <- head(orderTable,x)
      barplot(topTable$Freq, col = "pink", 
              main = paste("Top ", x," Accidental Streets"), xlab = "Street Names", ylab = "Count")
      axis(1, at=seq(length(topTable$Var1)),labels=topTable$Var1,cex.axis=0.75)
    }
    else if(input$week == "Tuesday")
    {
      # draw the bar graph
      x <- input$topStreet
      newData <- crashData %>% filter(Day.Of.Week == "Tuesday")
      factor(newData$Street.Name)
      SubsetTable <- table(newData$Street.Name)
      SubsetDataframe <- as.data.frame(SubsetTable)
      orderTable <- SubsetDataframe[order(-SubsetDataframe[,2], SubsetDataframe[,1]),]
      topTable <- head(orderTable,x)
      barplot(topTable$Freq, col = "pink", 
              main = paste("Top ", x," Accidental Streets"), xlab = "Street Names", ylab = "Count")
      axis(1, at=seq(length(topTable$Var1)),labels=topTable$Var1,cex.axis=0.75)
    }
    else if(input$week == "Wednesday")
    {
      # draw the bar graph
      x <- input$topStreet
      newData <- crashData %>% filter(Day.Of.Week == "Wednesday")
      factor(newData$Street.Name)
      SubsetTable <- table(newData$Street.Name)
      SubsetDataframe <- as.data.frame(SubsetTable)
      orderTable <- SubsetDataframe[order(-SubsetDataframe[,2], SubsetDataframe[,1]),]
      topTable <- head(orderTable,x)
      barplot(topTable$Freq, col = "pink", 
              main = paste("Top ", x," Accidental Streets"), xlab = "Street Names", ylab = "Count")
      axis(1, at=seq(length(topTable$Var1)),labels=topTable$Var1,cex.axis=0.75)
    }
    else if(input$week == "Thurday")
    {
      # draw the bar graph
      x <- input$topStreet
      newData <- crashData %>% filter(Day.Of.Week == "Thurday")
      factor(newData$Street.Name)
      SubsetTable <- table(newData$Street.Name)
      SubsetDataframe <- as.data.frame(SubsetTable)
      orderTable <- SubsetDataframe[order(-SubsetDataframe[,2], SubsetDataframe[,1]),]
      topTable <- head(orderTable,x)
      barplot(topTable$Freq, col = "pink", 
              main = paste("Top ", x," Accidental Streets"), xlab = "Street Names", ylab = "Count")
      axis(1, at=seq(length(topTable$Var1)),labels=topTable$Var1,cex.axis=0.75)
    }
    else if(input$week == "Friday")
    {
      # draw the bar graph
      x <- input$topStreet
      newData <- crashData %>% filter(Day.Of.Week == "Friday")
      factor(newData$Street.Name)
      SubsetTable <- table(newData$Street.Name)
      SubsetDataframe <- as.data.frame(SubsetTable)
      orderTable <- SubsetDataframe[order(-SubsetDataframe[,2], SubsetDataframe[,1]),]
      topTable <- head(orderTable,x)
      barplot(topTable$Freq, col = "pink", 
              main = paste("Top ", x," Accidental Streets"), xlab = "Street Names", ylab = "Count")
      axis(1, at=seq(length(topTable$Var1)),labels=topTable$Var1,cex.axis=0.75)
    }
    else if(input$week == "Saturday")
    {
      # draw the bar graph
      x <- input$topStreet
      newData <- crashData %>% filter(Day.Of.Week == "Saturday")
      factor(newData$Street.Name)
      SubsetTable <- table(newData$Street.Name)
      SubsetDataframe <- as.data.frame(SubsetTable)
      orderTable <- SubsetDataframe[order(-SubsetDataframe[,2], SubsetDataframe[,1]),]
      topTable <- head(orderTable,x)
      barplot(topTable$Freq, col = "pink", 
              main = paste("Top ", x," Accidental Streets"), xlab = "Street Names", ylab = "Count")
      axis(1, at=seq(length(topTable$Var1)),labels=topTable$Var1,cex.axis=0.75)
    }
   })
}

# Run the application 
shinyApp(ui = ui, server = server)

