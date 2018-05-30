/// @description Player Ready Text

switch(Mode)
{
	
	case GhostMode.PLAYERREADY:
	
	lblue = make_colour_rgb(116, 166, 247);
	
	draw_set_font(fPlayerReady);
	
	draw_set_color(lblue);
	
	draw_set_halign(fPlayerReady);
	
	draw_text(268, 318, "Player");
	
	draw_set_color(c_yellow);

	draw_text(274, 457, "Ready");
	break;
	
}