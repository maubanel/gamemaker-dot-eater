switch(object_index)
{
	
	case oBlinky:
		//ghost starts moving to the left
		direction = 180;

		Mode = GhostMode.SCATTER;

		//look ahead for ghost
		speed = oGameManager.GhostNormSpeed;

		NextDirectionLeft = false;
		NextDirectionUp = false;
		NextDirectionDown = false;
		NextDirectionRight = false;

		Horizontal = true;
		Vertical = false;

		NextDirection = 180;

		LastGridX = oBlinky.GridX;
	LastGridY = oBlinky.GridY;

}


