/*  Function resets movement direction for PacMan.
//  Argument - Uses keyboard constants for up, left, right and down 
*/

var NewDirection = argument0;

IsMoveLeft = false;
IsMoveRight = false;
IsMoveUp = false;
IsMoveDown = false;

if (NewDirection = vk_left) IsMoveLeft = true;
if (NewDirection = vk_right) IsMoveRight = true;
if (NewDirection = vk_up) IsMoveUp = true;
if (NewDirection = vk_down) IsMoveDown = true;