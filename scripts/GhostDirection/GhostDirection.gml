//Pick the sprite based on direction ghost is moving in


var UpSprite, DownSprite, LeftSprite, RightSprite

if (IsInGame || (IsSafeZone && !IsFrightened))
{
	//Select one of the four ghosts
	switch (object_index)
	{
		case oBlinky:
			UpSprite = sBlinkyU;
			DownSprite = sBlinkyD;
			LeftSprite = sBlinkyL;
			RightSprite = sBlinkyR;
			break;
		
		case oPinky:
			UpSprite = sPinkyU;
			DownSprite = sPinkyD;
			LeftSprite = sPinkyL;
			RightSprite = sPinkyR;
			break;		
			
		case oInk:
			UpSprite = sInkyU;
			DownSprite = sInkyD;
			LeftSprite = sInkyL;
			RightSprite = sInkyR;
			break;
			
		case oClyde:
			UpSprite = sClydeU;
			DownSprite = sClydeDown;
			LeftSprite = sClydeL;
			RightSprite = ssClydeR;	
			break;
	}

	//Assing the correct sprite based on direction of movement
	switch (direction)
	{
		case 90:
			sprite_index = UpSprite;
			break;
		
		case 270:
			sprite_index = DownSprite;
			break;
		
		case 180:
			sprite_index = LeftSprite;
			break;
		
		case 0:
			sprite_index = RightSprite;
			break;
		
		default:
			sprite_index = RightSprite;
			break;
	}
}
else
{
	switch (direction)
	{
		case 90:
			image_index = 3;
			break;
		
		case 270:
			image_index = 1;
			break;
		
		case 180:
			image_index = 0;
			break;
		
		case 0:
			image_index = 2;
			break;
		
		default:
			image_index = 0;
			break;
	}
}
