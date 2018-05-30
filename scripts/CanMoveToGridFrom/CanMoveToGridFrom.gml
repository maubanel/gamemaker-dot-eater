var Hor = GridX;
var Ver = GridY;

var NewDirection = argument1;

if (NewDirection == 0) ++Hor;
if (NewDirection == 90) -- Ver;
if (NewDirection == 180) --Hor;
if (NewDirection == 270) ++Ver;

if (argument0 == vk_left) --Hor;
if (argument0 == vk_right) ++Hor;
if (argument0 == vk_up) --Ver;
if (argument0 == vk_down) ++Ver;

//clamp from going off the grid
Hor = clamp(Hor, 0, oGameManager.GridXNumColumns-1);
Ver = clamp (Ver, 0, oGameManager.GridYNumRows-1);


//Return if you can move
if (oGameManager.CollisionArray[Hor, Ver] == 0)
{
	return false;	
}

else
{
	return true;	
}