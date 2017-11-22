/// @description Insert description here
// You can write your code in this editor
event_inherited();
if(is_Colliding)
{
	intendedDir += 180;
	intendedSpeed = 6;
	numBounces++;
	if (numBounces > 5)
		instance_destroy();
}