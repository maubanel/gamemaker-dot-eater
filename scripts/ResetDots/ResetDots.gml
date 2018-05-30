for (y = 0; y < 36; ++y)
{
	for (x = 0; x < 28; ++x)
	{
		if (oGameManager.CollisionArray[x,y]  == 1)
		{
			instance_create_depth(x * oGameManager.GridSize,
								  y * oGameManager.GridSize,
								  0, oDot);
		}
		
		if (oGameManager.CollisionArray[x,y]  == 2)
		{
			instance_create_depth(x * oGameManager.GridSize,
								  y * oGameManager.GridSize,
								  0, oDotLarge);
		}
	}
}