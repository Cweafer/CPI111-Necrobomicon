/// @description Insert description here
// You can write your code in this editor
with(Actor_Obj){
	if(distance_to_object(other)<150){
		if (isInvincible == false)
		{
			healthCurrent -= 1;
			isInvincible = true;
			image_index = 0;
		}
		addVector(self,(150 - distance_to_object(other))/5, point_direction(other.x,other.y,x,y), 5,self.id);
	}
}