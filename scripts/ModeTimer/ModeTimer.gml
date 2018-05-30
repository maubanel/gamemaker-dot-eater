if (ChaseTimer >= ScatterMode1Length
	and ChaseTimer < ChaseMode1Length)
{
		oGameManager.Mode = GhostMode.CHASE;
}

else if (ChaseTimer >= ChaseMode1Length
		and ChaseTimer < ScatterMode2Length)
{
		oGameManager.Mode = GhostMode.SCATTER;
}

else if (ChaseTimer >= ScatterMode2Length
	and ChaseTimer < ChaseMode2Length)
{
		oGameManager.Mode = GhostMode.CHASE;
}

else if (ChaseTimer >= ChaseMode2Length
		and ChaseTimer < ScatterMode3Length)
{
		oGameManager.Mode = GhostMode.SCATTER;
}

else if (ChaseTimer >= ScatterMode3Length
	and ChaseTimer < ChaseMode3Length)
{
		oGameManager.Mode = GhostMode.CHASE;
}

else if (ChaseTimer >= ChaseMode3Length
		and ChaseTimer < ScatterMode4Length)
{
		oGameManager.Mode = GhostMode.SCATTER;
}

else if (ChaseTimer >= ScatterMode4Length)
{
	oGameManager.Mode = GhostMode.CHASE;
}

	