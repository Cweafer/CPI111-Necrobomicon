/// @description 



var radius = sprite_get_width(sprite_index);
with(Actor_Obj){
	if(distance_to_object(other)<radius){
		if (isInvincible == false)
			{
				switch(Player_obj.currentSigType) {
					case sigType.clear:
						healthCurrent -= 1;
						isInvincible = true;
						image_index = 0;
						break;
				}
			}
		addVector(self,(radius - distance_to_object(other))/5, point_direction(other.x,other.y,x,y), 5,self.id);
	}
	
}

//destroy destructable tiles
destroyTileColliding(self,0,0);