//CanMoveToGrid

var Hor = GridX;
var Ver = GridY;
 

if (argument0 == vk_left) Hor = GridX - 1;
if (argument0 == vk_right) Hor = GridX + 1;
if (argument0 == vk_up) Ver = GridY - 1;
if (argument0 == vk_down) Ver = GridY + 1;
 

//clamp from going off the grid
Hor = clamp(Hor, 0, oGameManager.GridXNumColumns - 1);
Ver = clamp (Ver, 0, oGameManager.GridYNumRows - 1);
 

//Return if you can move
if (oGameManager.CollisionArray[Hor, Ver] == 0)
{
    return false;
}
 

else
{
    return true;
}