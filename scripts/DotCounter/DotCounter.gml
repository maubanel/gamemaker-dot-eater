//Add to total dots in level eaten
oGameManager.GlobalDotCounter++;

if (oGameManager.GlobalDotTimer)
{
	oGameManager.GlobalDotTimerCounter++;	
}
		
with (oGhostParent)
{
	if (CountingDots)
	{
		GhostDotCounter++;	
	}
}