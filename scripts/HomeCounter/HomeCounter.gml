if (!oGameManager.IsGlobalDotCounting)
{
	if (LocalDotCounter>=NumLocalDots && IsDotCounting)	
	{
		Mode = GhostMode.GOTOHOMEYCENTER;
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
}