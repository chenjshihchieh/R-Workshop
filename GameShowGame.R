
MontyHallGame <- function(Pick, Approach){
if(Approach == "Stay"|Approach == "stay"){
  Strategy <- "Stay"
}else{
  Strategy <- "Switch"
}

  SelectedDoor <- as.numeric(Pick)


Items <- sample(c("Car", "Empty", "Empty"), 3)
Door <- c(1, 2, 3)
if (Strategy == 'Stay'){
  if (Items[SelectedDoor] == 'Car'){
    Items[SelectedDoor]
    }else{
    Items[SelectedDoor]
    }
}else if (Items[SelectedDoor] == 'Car'){
    Door <- sample(Door[-SelectedDoor], 1)
    Items[Door]
}else if(Items[SelectedDoor] == 'Empty'){
    Door <- Door[-SelectedDoor]
    Door <- Door[Items[Door] == "Car"]
    Items[Door]
    }
}
