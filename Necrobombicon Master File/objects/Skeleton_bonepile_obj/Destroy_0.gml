/// @description Insert description here
// You can write your code in this editor
if (healthCurrent <= 0)
{
with(instance_create_layer(x,y,"Instances",bone_projectile_obj))
{
	intendedSpeed = 5;
	intendedDir = 0;
}
with(instance_create_layer(x,y,"Instances",bone_projectile_obj))
{
	intendedSpeed = 5;
	intendedDir = 90;
}
with(instance_create_layer(x,y,"Instances",bone_projectile_obj))
{
	intendedSpeed = 5;
	intendedDir = 180;
}
with(instance_create_layer(x,y,"Instances",bone_projectile_obj))
{
	intendedSpeed = 5;
	intendedDir = 270;
}
}
roomController.enemys--;