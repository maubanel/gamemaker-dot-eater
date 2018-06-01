/// @description Blinky Ai

//Get Blinky's target:
switch(Mode)
{
	case GameMode.CHASE:
		TargetX = oPacMan.x;
		TargetY = oPacMan.y;
		break;
	
	case GameMode.SCATTER:
		TargetX = ScatterTargetX;
		TargetY = ScatterTargetY;
		break;
}
//Inherit all common ghost functionality
event_inherited();