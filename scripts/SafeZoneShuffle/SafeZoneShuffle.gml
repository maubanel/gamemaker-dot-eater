var NewY = (y + vspeed);
if (vspeed > 0) NewY += oGameManager.Offset;
else NewY -=oGameManager.Offset;
var NewYGrid = GetGridNum(NewY);
var NewXGrid = GetGridNum(x);
if (oGameManager.CollisionArray[NewXGrid, NewYGrid] == 0)
{
	vspeed *= -1;	
}