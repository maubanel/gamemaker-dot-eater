//Blinky always leaves right away

if (object_index == oBlinky) Mode = GhostMode.GOTOHOMEYCENTER;

else if (!oGameManager.IsGlobalDotCounting)
{
	if (LocalDotCounter>=NumLocalDots)	
	{
		Mode = GhostMode.GOTOHOMEYCENTER;
		if (IsDotCounting)
		{
		
		IsDotCounting = false;	
			if (object_index == oPinky)
			{
				oInk.IsDotCounting = true;
			}
			else if (object_index == oInk)
			{
				oClyde.IsDotCounting = true;
			}
		}
	}
}

else 
{
	if (oGameManager.GlobalDotCounter >= NumGlobalDots 
		&& (object_index == oPinky	|| object_index == oInk))
	{
		Mode = GhostMode.GOTOHOMEYCENTER;
	}
	
	if (oGameManager.GlobalDotCounter == NumGlobalDots 
		&& object_index == oClyde)
	{
		Mode = GhostMode.GOTOHOMEYCENTER;
	}
	
	if (oClyde.Mode != GhostMode.SCATTER && object_index == oClyde)
	{
		oGameManager.GlobalDotCounter = 0;
		oGameManager.IsGlobalDotCounting = false;
		oGhostParent.LocalDotCounter = 0;
		oGhostParent.IsDotCounting = false;
		oPinky.IsDotCounting = true;
	}
	
}