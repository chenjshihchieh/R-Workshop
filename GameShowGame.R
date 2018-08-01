#The game show problem

rm(list = ls())

SelectedDoor <- 1 #1, 2, or 3 (without quotations)
Strategy <- "Switch" #"Stay" or "Switch" (with quotations)

if(!(exists("win") & exists("denominator"))){
win <- 0
denominator <- 0
}

A <- NULL
B <- NULL
C <- NULL

Items <- c("Car", "Empty", "Empty")
Prize <- c(1, 2, 3)
#Prize Dataframe
prize.df <- data.frame(Prize, Items = sample(Items, 3))

Door <- c(1, 2, 3)
#What is behind selected door

#Playing the game
if (Strategy == 'Stay'){
  if (prize.df[SelectedDoor, "Items"] == 'Car'){
    win <-  win + 1
    print(prize.df[SelectedDoor, "Items"])
    }else{
    print(prize.df[SelectedDoor, "Items"])
    }
}else if (prize.df[SelectedDoor, "Items"] == 'Car'){
    Door <- sample(Door[-SelectedDoor], 1)
    
    print(prize.df[Door, "Items"])
    win <- win + 0
}else if(prize.df[SelectedDoor, "Items"] == 'Empty'){
    Door <- Door[-SelectedDoor]
    Door <- Door[prize.df$Items[Door] == "Car"]
    print <- prize.df[Door, "Items"]
    win <- win + 1 
}
  
denominator <- denominator + 1
ProbabilityofWinning <- win/denominator
ProbabilityofWinning

