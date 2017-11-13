///@params projectileType
image_index = 0;
attacking = true;
with(instance_create_layer(x,y,"Instances",argument0))
{
	intendedSpeed = 5;
	intendedDir = point_direction(other.x,other.y,Player_obj.x,Player_obj.y);
}
