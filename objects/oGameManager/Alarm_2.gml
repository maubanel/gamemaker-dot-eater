/// @description Start Game

GameMode = GameModes.SCATTER;

SetFourGhostsHome();

//Make player and ghosts move
oPacMan.image_speed = 1;
oPacMan.speed = PacNormalSpeed;

oGhostParent.image_speed = 1;

if (instance_exists(oDotLarge))
{
	oDotLarge.image_speed = 1;
}

