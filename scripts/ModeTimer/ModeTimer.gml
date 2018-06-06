if (oGameManager.ChaseTimer < oGameManager.ScatterMode1Length)
{
	return GameModes.SCATTER;
}

else if (oGameManager.ChaseTimer >= oGameManager.ScatterMode1Length
	and oGameManager.ChaseTimer < oGameManager.ChaseMode1Length)
{
		return GameModes.CHASE;
}

else if (oGameManager.ChaseTimer >= oGameManager.ChaseMode1Length
		and oGameManager.ChaseTimer < oGameManager.ScatterMode2Length)
{
		return GameModes.SCATTER;
}

else if (oGameManager.ChaseTimer >= oGameManager.ScatterMode2Length
	and oGameManager.ChaseTimer < oGameManager.ChaseMode2Length)
{
		return GameModes.CHASE;
}

else if (oGameManager.ChaseTimer >= oGameManager.ChaseMode2Length
		and oGameManager.ChaseTimer < oGameManager.ScatterMode3Length)
{
		oGameManager.GameMode = GameModes.SCATTER;
}

else if (oGameManager.ChaseTimer >= oGameManager.ScatterMode3Length
	and oGameManager.ChaseTimer < oGameManager.ChaseMode3Length)
{
		return GameModes.CHASE;
}

else if (ChaseTimer >= ChaseMode3Length
		and ChaseTimer < ScatterMode4Length)
{
		return GameModes.SCATTER;
}

else if (ChaseTimer >= ScatterMode4Length)
{
	return GameModes.CHASE;
}

else
{
	return GameModes.CHASE;
}
	