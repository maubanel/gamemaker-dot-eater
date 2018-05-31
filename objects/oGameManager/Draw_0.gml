/// @description Player Ready Text

switch(Mode)
{
	
	case GhostMode.PLAYERREADY:
	
	lblue = make_colour_rgb(116, 166, 247);
	
	draw_set_font(fPlayerReady);
	
	draw_set_color(lblue);
	
	draw_set_halign(fPlayerReady);
	
	draw_text(385, 445, "Player");
	
	draw_set_color(c_yellow);

	draw_text(390, 630, "Ready");

	break;
	
	case GhostMode.GHOSTEATEN:
	draw_set_color(lblue);
	draw_set_font(fGhostEatenScore);
	draw_text(oPacMan.x - 16, oPacMan.y - 16, GhostScore);
	
	break;
	
}