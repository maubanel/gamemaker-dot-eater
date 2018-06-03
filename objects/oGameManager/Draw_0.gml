/// @description Player Ready Text
lblue = make_colour_rgb(116, 166, 247);

draw_set_font(fScore);
	
draw_set_color(c_white);

draw_text(400, 5, "Score");
draw_text (400, 45, score);

	
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
	draw_text(oPacMan.x - 20, oPacMan.y - 16, GhostScore);
		
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
	draw_set_alpha(.75);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, 90, false);
	draw_set_alpha(1);
	draw_set_color(c_green);
	draw_set_font(fGhostEatenScore);
	draw_set_font(fDebug);
	GameModeText = "";
	GameModeText = DebugText(true, "GameModeText", Mode);

	var BlinkyModeText = "Not in game";
	if (instance_exists(oBlinky)) BlinkyModeText = DebugText(false, "BlinkyModeText", oBlinky.Mode);

	var PinkyModeText = "Not in game";
	if (instance_exists(oPinky)) PinkyModeText = DebugText(false, "PinkyModeText", oPinky.Mode);
	
	var InkyModeText = "Not in game";
	if (instance_exists(oInk)) InkyModeText = DebugText(false, "InkyModeText", oInk.Mode);
	
	var ClydeModeText = "Not in game";
	if (instance_exists(oClyde)) ClydeModeText = DebugText(false, "ClydeModeText", oClyde.Mode);
	
	var LocalDot="No Timers";
	if (oPinky.IsDotCounting) LocalDot = string(oPinky.LocalDotCounter);
	if (oInk.IsDotCounting) LocalDot = string(oInk.LocalDotCounter);
	if (oClyde.IsDotCounting) LocalDot = string(oClyde.LocalDotCounter);
	draw_text(30, 15, "Game Mode: " + GameModeText);
	draw_text(30, 40, "Pac Speed: " + string(oPacMan.speed));
	draw_text(30, 65, "Total Dots: " + string(GlobalDotCounter));
	draw_text(250, 15, "Chase Timer: " + string(oGameManager.ChaseTimer));
	draw_text(250, 40, "Fright Timer: " + string(oGameManager.FrightTimer));
	draw_text(250, 65, "Local Dot Timer: " +  LocalDot);

	draw_text(420, 15, "Glob Dot Counter: " + string(oGameManager.GlobalDotCounter));
	draw_text(420, 40, "Clyde Mode: " + ClydeModeText);	
	draw_text(420, 65, "Pinky Mode: " + PinkyModeText);
	draw_text(680, 40, "Blinky Mode: " + BlinkyModeText);
	draw_text(680, 65, "Inky Mode: " + InkyModeText);


		
}
	