//handles collisions between objects
var frict = 10;//change this when we have a place to put it
var force = 1; //see above note

if(global.actor_allowUpdate){
	if(isSolid){
		with(Actor_Obj){
			if(place_meeting((x)+xSpeed,y,other)){ 
				//check if the object can be pushed and if it can add to the force vector
				if(other.pushable){
					ds_list_add(other.environmentVectMag, sqrt(power(xSpeed,2) + power(ySpeed,2)));
					ds_list_add(other.environmentVectDir, point_direction(x,y,x+xSpeed,y+ySpeed));
					ds_list_add(other.environmentVectDec, frict);
				}
				xSpeed = 0;
			}
			if(place_meeting(x,(y)+ySpeed,other)){
				if(other.pushable){
					ds_list_add(other.environmentVectMag, sqrt(power(xSpeed,2) + power(ySpeed,2)));
					ds_list_add(other.environmentVectDir, point_direction(x,y,x+xSpeed,y+ySpeed));
					ds_list_add(other.environmentVectDec, frict);
				}
				ySpeed = 0;
			}
		}
	}
}