/// @description Insert description here
// You can write your code in this editor

var radius = sprite_get_width(sprite_index);

with(Actor_Obj)
{
	if(distance_to_object(other)<radius)
	{
		if (isInvincible == false)
		{
			//isInvincible = true;
			//image_index = 0;
			addVector(self,(radius - distance_to_object(other))/2, point_direction(other.x,other.y,x,y), 5,self.id);
		}
	}	
}	

image_blend = c_blue;