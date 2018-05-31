
//Pac Man Move Horizonatl
//if (x != GetCenterGridPos(GridX) or y != GetCenterGridPos(GridY))
//{

	if (Horizontal)
	{
		if (keyboard_check(vk_left) and keyboard_lastkey == vk_left)
		{
			direction = 180;
			image_angle = direction;
			SetDirections(vk_left);
			speed = CurrentSpeed;
			IsSpaceFreeToMove();
		}

		//Pac Man Move Right
		if (keyboard_check(vk_right) && keyboard_lastkey == vk_right)
		{
			direction = 0;
			image_angle = direction;
			SetDirections(vk_right);
			speed = CurrentSpeed;
			IsSpaceFreeToMove();
		}
	}

	//Pac Man Move Horizonatl
	if (Vertical)
	{
		if (keyboard_check(vk_up) && keyboard_lastkey == vk_up)
		{
			direction = 90;
			image_angle = direction;
			SetDirections(vk_up);
			speed = CurrentSpeed;
			IsSpaceFreeToMove();
		}

		//Pac Man Move Right
		if (keyboard_check(vk_down) && keyboard_lastkey == vk_down)
		{
			direction = 270;
			image_angle = direction;
			SetDirections(vk_down);
			speed = CurrentSpeed;
			IsSpaceFreeToMove();
		}
	}
//}