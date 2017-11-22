/// @description Insert description here
// You can write your code in this 
event_inherited();
inWall = false;
if (checkTileCollision(self,0,0))
{
	inWall = true;
	instance_destroy();
}
pushable = true;
isSolid = true;
