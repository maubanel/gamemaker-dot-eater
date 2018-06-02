/*  Function resets movement direction for PacMan.
//  Argument - Direction
*/

var NewDirection = argument0;

IsMoveLeft = false;
IsMoveRight = false;
IsMoveUp = false;
IsMoveDown = false;

if (NewDirection = 180) IsMoveLeft = true;
if (NewDirection = 0) IsMoveRight = true;
if (NewDirection = 90) IsMoveUp = true;
if (NewDirection = 270) IsMoveDown = true;