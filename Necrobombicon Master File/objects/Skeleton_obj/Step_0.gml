/// @description Insert description here
// You can write your code in this editor
event_inherited()
if (healthCurrent <= 0)
{
	instance_create_layer(x,y,"Instances",Skeleton_bonepile_obj);
	instance_destroy();
}