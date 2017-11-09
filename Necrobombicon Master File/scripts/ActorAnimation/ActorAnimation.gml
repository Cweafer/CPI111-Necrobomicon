//this needs to be cleaned up and reogranized to be more robust 

if(global.actor_allowUpdate){
	//handle movement animation
	if(intendedSpeed != 0){
		if (intendedDir >0 && intendedDir < 180){
			sprite_index = up_Spr;
		}
		else if (intendedDir <360 && intendedDir > 180)
			sprite_index = down_Spr;
		
			else if (intendedDir = 180)
				sprite_index = left_Spr;
			else if(intendedDir = 0)
				sprite_index = right_Spr;
	}
	else
	//handles idle animations
	if(intendedSpeed == 0){
		switch(sprite_index)
		{
			case right_Spr :
				sprite_index = right_idle;
				break;
			case left_Spr :
				sprite_index = left_idle;
				break;
			case down_Spr :
				sprite_index = down_idle;
				break;
			case up_Spr :
				sprite_index = up_idle;
				break;
		}
	}
}