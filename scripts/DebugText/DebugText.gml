var IsGame = argument0;
var Text = argument1;
var Ghost = argument2;
var ObjectId = argument3;

if (IsGame)
{
	switch (GameMode)
		{
	
			case GameModes.CHASE:
			Text = "Chase";
			break;
			
			case GameModes.SCATTER:
			Text = "Scatter";
			break;
			
			case GameModes.PLAYERDEAD:
			Text = "Player Dead";
			break;
			
			case GameModes.PLAYERREADY:
			Text = "Player Ready";
			break;	
			
			case GameModes.GHOSTEATEN:
			Text = "Ghost Eaten";
			break;	
			
			case GameModes.FRIGHT:
			Text = "Fright";
			break;	
			
			case GameModes.FRIGHTFLASH:
			Text = "Fright Flash";
			break;	
			
			case GameModes.PLAYERDEATHANIM:
			Text = "Player Death Animation";
			break;	
			
			case GameModes.NEXTLEVELPAUSE:
			Text = "Next Lev Pause";
			break;
			
			case GameModes.NEXTLEVELFLASH:
			Text = "Next Lev Flash";
			break;
			
			case GameModes.READY:
			Text = "READY";
			break;
			
			case GameModes.PREGAME:
			Text = "PREGAME";
			break;
			
			case GameModes.YOULOSE:
			Text = "You Lose!";
			break;
			
			case GameModes.NEXTLEVEL:
			Texzt = "Next Level";
			break;
		}
		return Text;
}

else
{
	switch (Ghost)
		{
			
			case GhostModes.EYESRETURN:
			Text = "Eyes Return";
			break;
			
			case GhostModes.FIRSTTURN:
			Text = "First Turn";
			break;

			case GhostModes.GOTOHOMEYCENTER:
			Text = "Leaving Home Center Vertically";
			break;
				
			case GhostModes.GOTOHOMECENTER:
			Text = "Leaving Home Center";
			break;
				
			case GhostModes.LEAVEHOME:
			Text = "Leaving Home Box";
			break;
			
			case GhostModes.EYESRETURNABOVEHOME:
			Text = "Eyes to Above home";
			break;
				
			case GhostModes.EYESRETURNINTOHOME:
			Text = "Eyes Into home";
			break;
			
			case GhostModes.SAFEZONE:
			Text = "Safe Zone";
			break;
		
		}
		if (Ghost == -1 && !ObjectId.IsFrightened) Text = "Chs, FT and Sct";
		else if (Ghost == -1 && ObjectId.IsFrightened && 
				GameMode == GameModes.FRIGHT) Text = "Fright";
		else if (Ghost == -1 && ObjectId.IsFrightened &&
				GameMode ==GameModes.FRIGHTFLASH) Text = "Fright Flash";
		
		
return Text;
}