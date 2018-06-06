/// @description Shared Ghost Creates

//Updates ghosts current position on grid
UpdateGridGhost();

image_alpha = 0;

//This is for ghosts in FRIGHT mode for random change
WhichDirection = ds_list_create();
ds_list_add(WhichDirection,0, 1, 2, 3);

enum GhostModes {EYESRETURN, EYESRETURNABOVEHOME, EYESRETURNINTOHOME, 
				SAFEZONE, GOTOHOMEYCENTER, GOTOHOMECENTER, LEAVEHOME, 
				EYESFREEZE, FIRSTTURN}
