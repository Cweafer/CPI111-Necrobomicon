/// @description 



var radius = sprite_get_width(sprite_index);

// broken code, not sure why it's here? destroys all projectiles, not just those in explosion radius
// with(Projectile_Obj) {instance_destroy();}

with(Actor_Obj){
	
	if(distance_to_object(other)<radius){
		if (isInvincible == false)
			{
				switch(Player_obj.currentSigType) {
					case sigType.clear:
						healthCurrent -= 1;
						isInvincible = true;
						image_index = 0;
						addVector(self,(radius - distance_to_object(other))/5, point_direction(other.x,other.y,x,y), 5,self.id);
						break;
					case sigType.air:
						addVector(self,(radius - distance_to_object(other))/2, point_direction(other.x,other.y,x,y), 5,self.id);
						break;
				}
			}
	}
	
}

//destroy destructable tiles
destroyTileColliding(self,0,0);