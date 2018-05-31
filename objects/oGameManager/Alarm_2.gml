/// @description Start Game

Mode = GhostMode.SCATTER;

//Make player and ghosts move
oPacMan.image_speed = 1;
oPacMan.speed = PacNormalSpeed;

oGhostParent.image_speed = 1;

with (oBlinky) ResetGhosts();

with (oGhostParent)
{
	Mode = StartingGameMode;
}