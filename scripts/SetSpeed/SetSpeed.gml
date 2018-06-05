/* Sets speed based on whether it is in fright or non fright mode */
	
	
if (GridType == 3 && oGameManager.GameMode !=GameModes.FRIGHT) // Empty space
{
	CurrentSpeed = oGameManager.PacNormalSpeed
}

else if ((GridType == 1 or GridType == 2) && oGameManager.GameMode !=GameModes.FRIGHT)
{
	CurrentSpeed = oGameManager.PacNormalDotSpeed;
}
	
else if (GridType == 3 && oGameManager.GameMode ==GameModes.FRIGHT) // Empty space
{
	CurrentSpeed = oGameManager.PacFrightSpeed;
}

else if ((GridType == 1 or GridType == 2) && oGameManager.GameMode ==GameModes.FRIGHT)
{
	CurrentSpeed = oGameManager.PacFrightDotSpeed;
}