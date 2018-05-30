//Gets last frames position
LastGridX = GridX;
LastGridY = GridY;

//Sets the grid positions
GridX = (GetGridNum(x));
GridY = (GetGridNum(y));

GridX = clamp(GridX, 0, 27);
GridY = clamp(GridY,0, 35);
