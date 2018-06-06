switch(GhostMode)
{

	case GhostModes.FIRSTTURN:
	TargetX = GetCenterGridPos(9);
	TargetY = GetCenterGridPos(15);
	break;
	
	case -1:
	if (GameModes.SCATTER == ModeTimer())
	{
		TargetX = ScatterTargetX;
		TargetY = ScatterTargetY;
	}
	
	else if (GameModes.CHASE == ModeTimer())
	{
		//Blinky's targets PacMan's current grid position
		if (object_index == oBlinky)
		{
			TargetX = oPacMan.x;
			TargetY = oPacMan.y;
		}
		//Pinky targets 4 blocks in front of PacMan except for up
			//where P also targets 4 to the left (bug from original)
		else if (object_index == oPinky)
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
	
		//Inky starts the same as Pinky but then uses this inital target to
			//calculate a vector between it and Blinky.  Double this to get the 
			//target
		else if (object_index == oInk)
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
		
			var VecX = GetCenterGridPos(NewGridX) - oBlinky.x;
			var VecY = GetCenterGridPos(NewGridY) - oBlinky.y;
		
			TargetX = oBlinky.x + VecX * 2;
			TargetY = oBlinky.y + VecY * 2;	
		}
	
		//If within a radius of 8 tiles then he goes to scatter target
		//else chases pacman directly like Blinky
		else if (object_index == oClyde)
		{
				if (point_distance(oPacMan.x, oPacMan.y, x, y) > (8 * oGameManager.GridSize))
				{
					TargetX = oPacMan.x;
					TargetY = oPacMan.y;
				}
				else
				{
					TargetX = ScatterTargetX;
					TargetY = ScatterTargetY;	
				}
		}
	}
}

/// @description Blinky Ai

