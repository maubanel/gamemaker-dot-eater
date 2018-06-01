var NewY = y + vspeed * 8;
var NewYGrid = GetGridNum(NewY);
if (oGameManager.CollisionArray[GridX, NewYGrid] == 0)
{
	vspeed *= -1;	
}