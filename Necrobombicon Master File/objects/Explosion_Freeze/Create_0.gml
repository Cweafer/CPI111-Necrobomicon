/// @description Insert description here
// You can write your code in this editor

var radius = sprite_get_width(sprite_index);
var freezeSeconds = 4;

with(Projectile_Obj)
{
	if(distance_to_object(other)<=0)
		instance_destroy();
}

with(Actor_Obj)
{
	if(distance_to_object(other)<=0)
	{
		if (isInvincible == false)
		{
			//isInvincible = true;
			//image_index = 0;
			canMove = false;
			xSpeed = 0;
			ySpeed = 0;
			image_speed = 0;
			image_blend = c_blue;
			alarm[3] = room_speed * freezeSeconds;
			addVector(self,(radius - distance_to_object(other))/5, point_direction(other.x,other.y,x,y), 5,self.id);
		}
	}	
}	

image_blend = c_blue;