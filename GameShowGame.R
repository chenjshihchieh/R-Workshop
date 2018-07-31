#The game show problem

rm(list = ls())
SelectedDoor <- A #A, B, or C
Strategy <- "Stay" #Stay or Switch


win <- NULL
denominator <- NULL


  

  Items <- c("Car", "Empty", "Empty")
  Prize <- c("P1", "P2", "P3")
  #Prize Dataframe
  prize.df <- data.frame(Prize, Items = sample(Items, 3))
  #Randomly assign prize to door
  A <- sample(Prize, 1)
  Prize <- Prize[Prize != A]
  B <- sample(Prize, 1)
  C <- Prize[Prize != B]
  Door <- c(A, B, C)
  #What is behind selected door
  

  #Playing the game
if (Strategy == 'Stay'){
  
  if (prize.df[prize.df$Prize == SelectedDoor, "Items"] == 'Car'){
    win <-  win + 1
    denominator <- denominator + 1
    print(prize.df[prize.df$Prize == SelectedDoor, "Items"])
    }else{
    win <- win + 0
    denominator <- denominator + 1
    Prize.df[prize.df[prize.df$Prize == SelectedDoor, "Items"]
             }
} else if (prize.df[prize.df$Prize == SelectedDoor, "Items"] == 'Car'){
    Door <- sample(Door[-SelectedDoor], 1)
    print(prize.df[Door, "Items"])
    win <- win + 0
    denominator = denominator + 1
  } else if (prize.df[prize.df$Prize == SelectedDoor, "Items"] == 'Empty'){
    Door <- Door[-SelectedDoor]
    Door <- Door[prize.df[Prize.df$Items] == "Car", Prize]
    print <- prize.df[Door, "Items"]
    win <- win + 1 
    denominator = denominator + 1
  }
  

ProbabilityofWinning <- win/denominator
ProbabilityofWinning

