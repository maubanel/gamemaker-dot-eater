if (!oGameManager.IsGlobalDotCounting)
{
	if (LocalDotCounter>=NumLocalDots && IsDotCounting)	
	{
		Mode = GhostMode.GOTOHOMEYCENTER;
		IsDotCounting = false;
		
		if (object_index == oPinky) oInk.IsDotCounting = true;
		else if (object_index == oInk) oClyde.IsDotCounting = true;
	}
}