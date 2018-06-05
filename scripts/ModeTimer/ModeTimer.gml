if (ChaseTimer < ScatterMode1Length)
{
	return GameModes.SCATTER;
}

else if (ChaseTimer >= ScatterMode1Length
	and ChaseTimer < ChaseMode1Length)
{
		oGameManager.GameMode = GameModes.CHASE;
}

else if (ChaseTimer >= ChaseMode1Length
		and ChaseTimer < ScatterMode2Length)
{
		return GameModes.SCATTER;
}

else if (ChaseTimer >= ScatterMode2Length
	and ChaseTimer < ChaseMode2Length)
{
		return GameModes.CHASE;
}

else if (ChaseTimer >= ChaseMode2Length
		and ChaseTimer < ScatterMode3Length)
{
		oGameManager.GameMode = GameModes.SCATTER;
}

else if (ChaseTimer >= ScatterMode3Length
	and ChaseTimer < ChaseMode3Length)
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
	return GameMode.CHASE;
}
	