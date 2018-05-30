
with (oGhostParent)
{
	if (Mode == GhostMode.CHASE || 
		Mode == GhostMode.SCATTER ||
		Mode == GhostMode.FRIGHT)
	{
		direction -= 180;
		NextDirection = direction;

	}
}