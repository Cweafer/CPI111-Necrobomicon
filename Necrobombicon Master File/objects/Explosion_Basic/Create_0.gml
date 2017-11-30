/// @description Insert description here
// You can write your code in this editor

//destroy destructable tiles
destroyTileColliding(self,0,0);

var radius = sprite_get_width(sprite_index)/2;


with(Actor_Obj)
{
	if(distance_to_object(other)<=0)
	{
		if (isInvincible == false)
		{
			healthCurrent -= 1;
			isInvincible = true;
			image_index = 0;
			addVector(self,(radius - distance_to_object(other))/5, point_direction(other.x,other.y,x,y), 5,self.id);
		}
	}	
}	