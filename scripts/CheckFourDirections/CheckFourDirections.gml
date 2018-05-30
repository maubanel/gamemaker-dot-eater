var TargX = argument0;
var TargY = argument1;

var ShortestDistance = 200000;
var DistanceX = 0;
var DistanceY = 0;
var DistanceUp = 0;
var DistanceDown = 0;
var DistanceLeft = 0;
var DistanceRight = 0;
var Horizontal = GridX;
var Vertical = GridY;
		
if (NextDirection = 0) ++Horizontal;
else if (NextDirection = 90) --Vertical;
else if (NextDirection = 180) --Horizontal;
else if (NextDirection = 270) ++Vertical;
		
if (NextDirectionUp) 
{
	DistanceX = GetCenterGridPos(Horizontal);
	DistanceY = GetCenterGridPos(Vertical-1);
	DistanceUp = point_distance(DistanceX, DistanceY,
						TargX, TargY);
	if (DistanceUp < ShortestDistance) 
		ShortestDistance = DistanceUp;
}
		
if (NextDirectionDown) 
{
	var DistanceX = GetCenterGridPos(Horizontal);
	var DistanceY = GetCenterGridPos(Vertical+1);
	DistanceDown = point_distance(DistanceX, DistanceY,
						TargX, TargY);
	if (DistanceDown < ShortestDistance) 
		ShortestDistance = DistanceDown;
}
		
if (NextDirectionLeft) 
{
	var DistanceX = GetCenterGridPos(Horizontal - 1);
	var DistanceY = GetCenterGridPos(Vertical);
	DistanceLeft = point_distance(DistanceX, DistanceY,
						TargX, TargY);
	if (DistanceLeft < ShortestDistance) 
		ShortestDistance = DistanceLeft;
}
		
if (NextDirectionRight) 
{
	var DistanceX = GetCenterGridPos(Horizontal + 1);
	var DistanceY = GetCenterGridPos(Vertical);
	DistanceRight = point_distance(DistanceX, DistanceY,
						TargX, TargY);
	if (DistanceRight < ShortestDistance) 
		ShortestDistance = DistanceRight;
}


if (DistanceUp > ShortestDistance) NextDirectionUp = false;
if (DistanceDown > ShortestDistance) NextDirectionDown = false;
if (DistanceLeft > ShortestDistance) NextDirectionLeft = false;
if (DistanceRight > ShortestDistance) NextDirectionRight = false;
		