if (IsFrightened)
{
	sprite_index = OriginalSprite;
	IsFrightened = false;
	alarm[4] = -1;
	oGameManager.Alarm4Pause = 0;
}