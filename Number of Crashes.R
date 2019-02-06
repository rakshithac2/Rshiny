#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#


library("shiny")

# Define UI for dataset viewer app ----
ui <- fluidPage(
  
  # App title ----
  titlePanel("Number of Crashes"),
  
  # Sidebar layout with input and output definitions ----
  sidebarLayout(
    
    # Sidebar panel for inputs ----
    sidebarPanel(
      
      # Input: Selector for choosing dataset ----
      
      selectInput("Primary",
                  label ="Choose Primary Vehicle",
                  choices = c("Car",
                              "Bus", 
                              "Bicycle", 
                              "Heavy Vehicle",
                              "Light Vehicle",
                              "Motorcycle",
                              "UFOs /Unknown"),
                  selected = "Car"),
      
      selectInput("Secondary",
                  label ="Choose Secondary Vehicle",
                  choices = c("Car",
                              "Fixed Object", 
                              "Bicycle", 
                              "Parked Vehicle"),
                  selected = "Car")
    ),
    
    # Main panel for displaying outputs ----
    mainPanel(
            textOutput("text1")
    )
  )
)

# Define server  ----
server <- function(input, output) {
  
  crashData <- read.csv("C:/Users/raksh/Desktop/studies/Data visuialization/Police_Department_Crash_Data_-_Historical.csv")
  View(crashData)   
  crashData$Vehicle1
  
  ###      OutPut
  output$text1 <- renderText({
    p <- input$Primary
    s <- input$Secondary
   
  if(input$Primary == "Car" & input$Secondary == "Car"){  
     
             v <- nrow(crashData[crashData$Vehicle1 == "Car" & crashData$Vehicle.2 == "Car",])
             paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
            
  }
  
  else if(input$Primary == "Car" & input$Secondary == "Bicycle"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Car" & crashData$Vehicle.2 == "Bicycle",])
      paste("Total number of collision with Primary Vehicle ", p , " and Secondary Vehicle ", s, " is ", v)
      
    }  
    else if(input$Primary == "Car" & input$Secondary == "Fixed Object"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Car" & crashData$Vehicle.2 == "Fixed Object",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }   
    else if(input$Primary == "Car" & input$Secondary == "Parked Vehicle"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Car" & crashData$Vehicle.2 == "Parked Vehicle",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }   
    else if(input$Primary == "Bus" & input$Secondary == "Car"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Bus" & crashData$Vehicle.2 == "Car",])
      paste("Total number of collision with Primary Vehicle ", p , " and Secondary Vehicle ", s , " is ", v)
      
    }
    
    else if(input$Primary == "Bus" & input$Secondary == "Bicycle"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Bus" & crashData$Vehicle.2 == "Bicycle",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }  
    else if(input$Primary == "Bus" & input$Secondary == "Fixed Object"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Bus" & crashData$Vehicle.2 == "Fixed Object",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }   
    else if(input$Primary == "Bus" & input$Secondary == "Parked Vehicle"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Bus" & crashData$Vehicle.2 == "Parked Vehicle",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }
   
    else if(input$Primary == "Bicycle" & input$Secondary == "Car"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Bicycle" & crashData$Vehicle.2 == "Car",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }
    
    else if(input$Primary == "Bicycle" & input$Secondary == "Bicycle"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Bicycle" & crashData$Vehicle.2 == "Bicycle",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }  
    else if(input$Primary == "Bicycle" & input$Secondary == "Fixed Object"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == " Bicycle" & crashData$Vehicle.2 == "Fixed Object",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }   
    else if(input$Primary == "Bicycle" & input$Secondary == "Parked Vehicle"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Bicycle" & crashData$Vehicle.2 == "Parked Vehicle",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }
    
    else if(input$Primary == "Heavy Vehicle" & input$Secondary == "Car"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Heavy Vehicle" & crashData$Vehicle.2 == "Car",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    } 
    
    else if(input$Primary == "Heavy Vehicle" & input$Secondary == "Bicycle"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Heavy Vehicle" & crashData$Vehicle.2 == "Bicycle",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }  
    else if(input$Primary == "Heavy Vehicle" & input$Secondary == "Fixed Object"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Heavy Vehicle" & crashData$Vehicle.2 == "Fixed Object",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }   
    else if(input$Primary == "Heavy Vehicle" & input$Secondary == "Parked Vehicle"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Heavy Vehicle" & crashData$Vehicle.2 == "Parked Vehicle",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }
    
    else if(input$Primary == "Light Vehicle" & input$Secondary == "Car"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Light Vehicle" & crashData$Vehicle.2 == "Car",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    } 
    
    else if(input$Primary == "Light Vehicle" & input$Secondary == "Bicycle"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Light Vehicle"& crashData$Vehicle.2 == "Bicycle",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }  
    else if(input$Primary == "Light Vehicle" & input$Secondary == "Fixed Object"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Light Vehicle" & crashData$Vehicle.2 == "Fixed Object",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }   
    else if(input$Primary == "Light Vehicle" & input$Secondary == "Parked Vehicle"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Light Vehicle" & crashData$Vehicle.2 == "Parked Vehicle",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }
    
    else if(input$Primary == "Motorcycle" & input$Secondary == "Car"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Motorcycle" & crashData$Vehicle.2 == "Car",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    } 
    
    else if(input$Primary == "Motorcycle" & input$Secondary == "Bicycle"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Motorcycle" & crashData$Vehicle.2 == "Bicycle",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }  
    else if(input$Primary == "Motorcycle" & input$Secondary == "Fixed Object"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Motorcycle" & crashData$Vehicle.2 == "Fixed Object",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }   
    else if(input$Primary == "Motorcycle" & input$Secondary == "Parked Vehicle"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "Motorcycle" & crashData$Vehicle.2 == "Parked Vehicle",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }
    
    else if(input$Primary == "UFOs /Unknown" & input$Secondary == "Car"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "UFOs /Unknown" & crashData$Vehicle.2 == "Car",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    } 
    
    else if(input$Primary == "UFOs /Unknown" & input$Secondary == "Bicycle"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "UFOs /Unknown" & crashData$Vehicle.2 == "Bicycle",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }  
    else if(input$Primary == "UFOs /Unknown" & input$Secondary == "Fixed Object"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "UFOs /Unknown" & crashData$Vehicle.2 == "Fixed Object",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }   
    else if(input$Primary == "UFOs /Unknown" & input$Secondary == "Parked Vehicle"){  
      
      v <- nrow(crashData[crashData$Vehicle1 == "UFOs /Unknown" & crashData$Vehicle.2 == "Parked Vehicle",])
      paste("Total number of collision with Primary Vehicle ", p, " and Secondary Vehicle ", s, " is ", v)
      
    }
    
    
    
  })
  
  #output$ <- renderText({paste("You have selected", input$Primary)})
}

shinyApp(ui, server)


