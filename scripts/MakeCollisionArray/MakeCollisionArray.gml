//Creates an array that stores status of each square
for (y = 0; y < oGameManager.GridYNumRows; ++y)
{
	for (x = 0; x < oGameManager.GridXNumColumns; ++x)
	{
		var listNum = y * 28 + x;
		CollisionArray[x, y] = argument[listNum];
	}
}