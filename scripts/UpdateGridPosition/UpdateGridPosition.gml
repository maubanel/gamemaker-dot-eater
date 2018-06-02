//Gets last frames position
LastGridX = GridX;
LastGridY = GridY;

//Sets the grid positions
/* Update Pac-Man's last and current Grid Position, if grid is
// different then get center grid type and xy */

GridX = (GetGridNum(x));
GridY = (GetGridNum(y));

GridX = clamp(GridX, 0, 27);
GridY = clamp(GridY,0, 35);

//If grid changes check grid type
if (GridX != LastGridX || GridY != LastGridY)
{
	//Find out what grid type under player
	GridType = oGameManager.CollisionArray[GridX, GridY];
	CenterXWorld = GetCenterGridPos(GridX);
	CenterYWorld = GetCenterGridPos(GridY);
}
