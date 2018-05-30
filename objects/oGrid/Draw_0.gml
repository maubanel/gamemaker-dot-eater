/// @description Debug draw an initial grid, not used in game
/*
var xx = 0;
var yy = 0;

while (xx < room_width or yy < room_height)
{
	//Sets the color
	draw_set_color(Col);
	
	//Draws the vertical line moving along the x axis
	draw_line_width(xx, 0, xx, room_height, LineWidth);
	
	//Draws the horizontal line moving along the y axis
	draw_line_width(0, yy, room_width, yy,  LineWidth);
	
	//Increment X by grid size
	xx = xx + oGameManager.GridSize;
	yy = yy + oGameManager.GridSize
}

for (y = 0; y < 36; ++y)
{
	for (x = 0; x < 28; ++x)
	{
		if (oGameManager.CollisionArray[x, y] != 0)
		{
			draw_set_color(c_green);
			draw_rectangle(x * oGameManager.GridSize, 
						   y * oGameManager.GridSize, 
						   x * oGameManager.GridSize + oGameManager.GridSize, 
						   y * oGameManager.GridSize + oGameManager.GridSize,
						   false);	
		}
	}
}
*/

