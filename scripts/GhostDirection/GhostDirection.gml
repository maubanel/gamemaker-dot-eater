//Pick the sprite based on direction ghost is moving in


var UpSprite, DownSprite, LeftSprite, RightSprite

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
