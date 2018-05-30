/// @description Blinky Ai

//Get Blinky's target:
switch(Mode)
{
	case GhostMode.CHASE:
		TargetX = oPacMan.x;
		TargetY = oPacMan.y;
		break;
	
	case GhostMode.SCATTER:
		TargetX = ScatterTargetX;
		TargetY = ScatterTargetY;
		break;
}
//Inherit all common ghost functionality
event_inherited();