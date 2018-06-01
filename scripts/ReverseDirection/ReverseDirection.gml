
with (oGhostParent)
{
	if (Mode == GameMode.CHASE || 
		Mode == GameMode.SCATTER ||
		Mode == GameMode.FRIGHT)
	{
		direction -= 180;
		NextDirection = direction;

	}
}