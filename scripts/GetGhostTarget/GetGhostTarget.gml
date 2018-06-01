switch(Mode)
{

	case GhostMode.FIRSTTURN:
	TargetX = GetCenterGridPos(9);
	TargetY = GetCenterGridPos(15);
	break;
	
	case GhostMode.SCATTER:
	TargetX = ScatterTargetX;
	TargetY = ScatterTargetY;
	break;

	case GhostMode.CHASE:
	//Blinky's target
	if (object_index == oBlinky)
	{
		TargetX = oPacMan.x;
		TargetY = oPacMan.y;
	}
	break;
}


/// @description Blinky Ai

