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
	
	if (object_index == oPinky)
	{
		var NewGridX = oPacMan.GridX;
		var NewGridY = oPacMan.GridY;
		if (oPacMan.IsMoveLeft) NewGridX -=4;		
		else if (oPacMan.IsMoveRight) NewGridX +=4;
		else if (oPacMan.IsMoveDown) NewGridY +=4;		
		else if (oPacMan.IsMoveUp) 
		{
			NewGridX -=4;
			NewGridY -= 4;
		}
		
		NewGridX = clamp(NewGridX, 0, oGameManager.GridXNumColumns-1);
		NewGridY = clamp(NewGridY, 0, oGameManager.GridYNumRows-1);
		TargetX = GetCenterGridPos(NewGridX);
		TargetY = GetCenterGridPos(NewGridY);
	}
	break;
}


/// @description Blinky Ai

