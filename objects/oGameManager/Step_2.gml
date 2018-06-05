/// @description Last Game Mode

LastGameMode = GameMode;

if (object_index == oClyde) show_debug_message("Mode: " + string(mode));

//Check for level end
if (MasterLevelDotCounter >= 244) Mode = GameModes.NEXTLEVELPAUSE;
