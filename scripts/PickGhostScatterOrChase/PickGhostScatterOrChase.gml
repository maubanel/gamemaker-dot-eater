//Returns the local ghost mode that matches the phase of the main game modes for whether the ghosts are in 
//SCATTER or CHASE modes.

if (ModeTimer == GameModes.SCATTER) return GhostModes.SCATTER;
else return GhostModes.CHASE;