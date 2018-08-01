#The game show problem

rm(list = ls())

SelectedDoor <- 1 #1, 2, or 3 (without quotations)
Strategy <- "Switch" #"Stay" or "Switch" (with quotations)


if(!(exists("win") & exists("denominator"))){
win <- 0
denominator <- 0
}

Items <- sample(c("Car", "Empty", "Empty"), 3)
Door <- c(1, 2, 3)
#What is behind selected door

#Playing the game
if (Strategy == 'Stay'){
  if (Items[SelectedDoor] == 'Car'){
    win <-  win + 1
    print(Items[SelectedDoor])
    }else{
    print(Items[SelectedDoor])
    }
}else if (Items[SelectedDoor] == 'Car'){
    Door <- sample(Door[-SelectedDoor], 1)
    print(Items[Door])
    win <- win + 0
}else if(Items[SelectedDoor] == 'Empty'){
    Door <- Door[-SelectedDoor]
    Door <- Door[Items[Door] == "Car"]
    print(Items[Door])
    win <- win + 1 
}
  
denominator <- denominator + 1
ProbabilityofWinning <- win/denominator
ProbabilityofWinning

