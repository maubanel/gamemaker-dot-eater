var IsGame = argument0;
var Text = argument1;
var Ghost = argument2;

if (IsGame)
{
	switch (Mode)
		{
			case GameMode.CHASE:
			Text = "Chase";
			break;
			
			case GameMode.SCATTER:
			Text = "Scatter";
			break;
			
			case GameMode.PLAYERDEAD:
			Text = "Player Dead";
			break;
			
			case GameMode.PREGAME:
			Text = "Game Start";
			break;
			
			case GameMode.PLAYERREADY:
			Text = "Player Ready";
			break;	
			
			case GameMode.GHOSTEATEN:
			Text = "Ghost Eaten";
			break;	
			
			case GameMode.FRIGHT:
			Text = "Fright";
			break;	
			
			case GameMode.FRIGHTFLASH:
			Text = "Fright Flash";
			break;	
			
			case GameMode.PLAYERDEATHANIM:
			Text = "Player Death Animation";
			break;	
			
			case GameMode.NEXTLEVELPAUSE:
			Text = "Next Lev Pause";
			break;
			
			case GameMode.NEXTLEVELFLASH:
			Text = "Next Lev Flash";
			break;
			
			case GameMode.READY:
			Text = "READY";
			break;
		}
		return Text;
}

else
{
	switch (Ghost)
			{
				case GhostMode.CHASE:
				Text = "Chase";
				break;
			
				case GhostMode.SCATTER:
				Text = "Scatter";
				break;
			
				case GhostMode.PLAYERDEAD:
				Text = "Player Dead";
				break;
			
				case GhostMode.PLAYERDEATHANIM:
				Text = "Player Death Animation";
				break;	
			
				case GhostMode.PREGAME:
				Text = "Game Start";
				break;
			
				case GhostMode.PLAYERREADY:
				Text = "Player Ready";
				break;	
			
				case GhostMode.EYESRETURN:
				Text = "Eyes Return";
				break;
			
				case GhostMode.FIRSTTURN:
				Text = "First Turn";
				break;
			
				case GhostMode.GHOSTEATEN:
				Text = "Ghost Eaten";
				break;
			
				case GhostMode.GOTOHOMEYCENTER:
				Text = "Leaving Home Center Vertically";
				break;
				
				case GhostMode.GOTOHOMECENTER:
				Text = "Leaving Home Center";
				break;
				
				case GhostMode.LEAVEHOME:
				Text = "Leaving Home Box";
				break;
			
				case GhostMode.EYESRETURNABOVEHOME:
				Text = "Eyes to Above home";
				break;
				
				case GhostMode.EYESRETURNINTOHOME:
				Text = "Eyes Into home";
				break;
			
				case GhostMode.SAFEZONE:
				Text = "Safe Zone";
				break;
			
				case GhostMode.FRIGHT:
				Text = "Fright";
				break;
			
				case GhostMode.FRIGHTFLASH:
				Text = "Fright Flash";
				break;
			}
	return Text;
}