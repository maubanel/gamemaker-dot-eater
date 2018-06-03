/// @description Check for Player Ghost Collision

if (IsInGame || IsEdible)
{		
	CheckForPlayerKill();
}

if (object_index == oClyde && direction == 180) show_debug_message("direction changed");