var NewY = (y + vspeed);
if (vspeed > 0) NewY += oGameManager.Offset;
else NewY -=oGameManager.Offset;
var NewYGrid = GetGridNum(NewY);
var NewXGrid = GetGridNum(x);
show_debug_message("y: " + string(y) + " - NewY: " + string(NewY));
show_debug_message(NewYGrid);
show_debug_message("Grid#: " + string(oGameManager.CollisionArray[GridX, NewYGrid] ))
if (oGameManager.CollisionArray[NewXGrid, NewYGrid] == 0)
{
	vspeed *= -1;	
}