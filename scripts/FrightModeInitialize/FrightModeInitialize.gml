//if ghosts are in FRIGHT MODE then change to blue
with (oGhostParent)
{
	if (Mode == GhostMode.FRIGHT)
	{
		if (sprite_index != sGhostFright)
		{
			sprite_index = sGhostFright;
		}
	}
}