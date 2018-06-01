/// @description Pinky Targeting

//Get Blinky's target:
switch(Mode)
{
	case GameMode.CHASE:
		var NewGridX = oPacMan.GridX;
		var NewGridY = oPacMan.GridY;
		if (oPacMan.IsMoveLeft)
		{
			NewGridX = oPacMan.GridX - 4;
			NewGridX = clamp(NewGridX, 0, oGameManager.GridXNumColumns-1);
		}
		else if (oPacMan.IsMoveRight)
		{
			NewGridX = oPacMan.GridX + 4;
			NewGridX = clamp(NewGridX, 0, oGameManager.GridXNumColumns-1);
		}
		
		else if (oPacMan.IsMoveUp)
		{
			NewGridX = oPacMan.GridX - 4;
			NewGridX = clamp(NewGridX, 0, oGameManager.GridXNumColumns-1);
			
			NewGridY = oPacMan.GridY - 4;
			NewGridY = clamp(NewGridY, 0, oGameManager.GridYNumRows -1);
		}
		else if (oPacMan.IsMoveDown)
		{
			NewGridY = oPacMan.GridY + 4;
			NewGridY = clamp(NewGridY, 0, oGameManager.GridYNumRows -1);
		}
		
		TargetX = GetCenterGridPos(NewGridX);
		TargetY = GetCenterGridPos(NewGridY);
		show_debug_message(TargetX);
		show_debug_message(TargetY);
		show_debug_message(GridX);
		show_debug_message(GridY);
		show_debug_message("Mode: " + string(Mode));
		break;
	
	case GameMode.SCATTER:
		TargetX = ScatterTargetX;
		TargetY = ScatterTargetY;
		break;
}
//Inherit all common ghost functionality
event_inherited();