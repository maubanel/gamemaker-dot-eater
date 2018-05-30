//Creates an array that stores status of each square
for (y = 0; y < 36; ++y)
{
	for (x = 0; x < 28; ++x)
	{
		var listNum = y * 28 + x;
		CollisionArray[x, y] = argument[listNum];
	}
}