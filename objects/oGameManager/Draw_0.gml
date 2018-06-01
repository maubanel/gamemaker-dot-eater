/// @description Player Ready Text

switch(Mode)
{
	
	case GameMode.PLAYERREADY:
	
	lblue = make_colour_rgb(116, 166, 247);
	
	draw_set_font(fPlayerReady);
	
	draw_set_color(lblue);
	
	draw_set_halign(fPlayerReady);
	
	draw_text(385, 445, "Player");
	
	draw_set_color(c_yellow);

	draw_text(390, 630, "Ready");

	break;
	
	case GameMode.GHOSTEATEN:
	draw_set_color(lblue);
	draw_set_font(fGhostEatenScore);
	draw_text(oPacMan.x - 16, oPacMan.y - 16, GhostScore);
		
	break;
	
}


	with (oGhostParent)
	{
		if (oGameManager.IsInGame && oGameManager.DrawDebug && !IsEdible)
		{
			draw_set_color(c_green);
			draw_line(x, y, TargetX, TargetY);
			draw_line_width(x, y, TargetX, TargetY, 5);
		}
	}
	//enum GameMode {CHASE, SCATTER, PLAYERDEAD, GAMESTART, PLAYERREADY, 
	//FRIGHT, EYESRETURN, GHOSTEATEN, RETURNTOSAFEZONE, SAFEZONE,
//	LEAVINGSAFEZONE}
	if (DrawDebug)
	{
		draw_set_font(fGhostEatenScore);
		var GameModeText = "";
		switch (Mode)
		{
			case GameMode.CHASE:
			GameModeText = "Chase";
			break;
			
			case GameMode.SCATTER:
			GameModeText = "Scatter";
			break;
			
			case GameMode.PLAYERDEAD:
			GameModeText = "Player Dead";
			break;
			
			case GameMode.GAMESTART:
			GameModeText = "Game Start";
			break;
			
			case GameMode.PLAYERREADY:
			GameModeText = "Player Ready";
			break;	
			
			case GameMode.GHOSTEATEN:
			GameModeText = "Ghost Eaten";
			break;	
			
		}
		draw_text(30, 30, "Game Mode: " + GameModeText);
		
		var BlinkyModeText = "";
		
		switch (oBlinky.Mode)
		{
			case GhostMode.CHASE:
			BlinkyModeText = "Chase";
			break;
			
			case GhostMode.SCATTER:
			BlinkyModeText = "Scatter";
			break;
			
			case GhostMode.PLAYERDEAD:
			BlinkyModeText = "Player Dead";
			break;
			
			case GhostMode.GAMESTART:
			BlinkyModeText = "Game Start";
			break;
			
			case GhostMode.PLAYERREADY:
			BlinkyModeText = "Player Ready";
			break;	
			
			case GhostMode.EYESRETURN:
			BlinkyModeText = "Eyes Return";
			break;
			
			case GhostMode.FIRSTTURN:
			BlinkyModeText = "First Turn";
			break;
			
			case GhostMode.GHOSTEATEN:
			BlinkyModeText = "Ghost Eaten";
			break;
			
			case GhostMode.LEAVINGSAFEZONE:
			BlinkyModeText = "Leaving Safe Zone";
			break;
			
			case GhostMode.RETURNTOSAFEZONE:
			BlinkyModeText = "Return to Safe Zone";
			break;
			
			case GhostMode.SAFEZONE:
			BlinkyModeText = "Safe Zone";
			break;
			
			
			
			
		}
		draw_text(30, 30, "Game Mode: " + GameModeText);
		draw_text(500, 30, "Blinky Mode: " + BlinkyModeText);
	
	}
	
	
	