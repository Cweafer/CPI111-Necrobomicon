/// @description Insert description here
// You can write your code in this editor

// unfreeze code
// alarm should only be called if object is becoming frozen
if (!canMove)
{
	canMove = true;
	image_speed = 1;
	image_blend = c_white;
}