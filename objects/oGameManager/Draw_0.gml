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
		if (IsInGame && oGameManager.DrawDebug && !IsEdible)
		{
			draw_set_color(c_green);
			draw_line(x, y, TargetX, TargetY);
			draw_line_width(x, y, TargetX, TargetY, 5);
		}
	}
	//enum GameMode {CHASE, SCATTER, PLAYERDEAD, PREGAME, PLAYERREADY, 
	//FRIGHT, EYESRETURN, GHOSTEATEN, RETURNTOSAFEZONE, SAFEZONE,
//	LEAVINGSAFEZONE}
	if (DrawDebug)
	{
		draw_set_color(c_green);
		draw_set_font(fGhostEatenScore);
		draw_set_font(fDebug);
		GameModeText = "";
		GameModeText = DebugText(true, "GameModeText", Mode);

		var BlinkyModeText = "Not in game";
		if (instance_exists(oBlinky)) BlinkyModeText = DebugText(false, "BlinkyModeText", oBlinky.Mode);

		var PinkyModeText = "Not in game";
		if (instance_exists(oPinky)) PinkyModeText = DebugText(false, "PinkyModeText", oPinky.Mode);
		
		draw_text(30, 15, "Game Mode: " + GameModeText);
		draw_text(30, 40, "Pac Speed: " + string(oPacMan.speed));
		draw_text(30, 65, "Chase Timer: " + string(oGameManager.ChaseTimer));
		draw_text(30, 90, "Fright Timer: " + string(oGameManager.FrightTimer));
		draw_text(500, 15, "Blinky Mode: " + BlinkyModeText);
		draw_text(500, 40, "Pinky Mode: " + PinkyModeText);
		
	}
	
	
	