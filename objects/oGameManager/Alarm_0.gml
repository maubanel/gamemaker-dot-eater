/// @description Player Dies

audio_play_sound(aDeath,1, false);	

//Trigger Pac-Man's Death Animation
oPacMan.sprite_index = sPacManDeath;

oPacMan.image_index = 0;

//Make Ghosts disappear
oGhostParent.image_alpha = 0;

