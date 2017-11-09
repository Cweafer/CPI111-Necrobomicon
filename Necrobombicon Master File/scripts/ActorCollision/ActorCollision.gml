//handles collisions between objects
var frict = 10;//change this when we have a place to put it
var force = 1; //see above note

if(global.actor_allowUpdate){
	if(isSolid){
		with(Actor_Obj){ if(isSolid){
			if(place_meeting((x)+xSpeed,y,other))
			{
				//check if the actor is enemy player interaction
				if(other.type == actor_type.enemy && type == actor_type.player)
				{
					ds_list_add(environmentVectMag, 5);
					ds_list_add(environmentVectDir, point_direction(other.x,other.y,x,y));
					ds_list_add(environmentVectDec, 5);
				}
				else //check if the actor is an enemery and the thing hittning is the player
					if(type == actor_type.enemy && other.type == actor_type.player)
					{
						ds_list_add(other.environmentVectMag, 5);
						ds_list_add(other.environmentVectDir, point_direction(x,y,other.x,other.y));
						ds_list_add(other.environmentVectDec, 5);
					}
				else
				{
				//check if the object can be pushed and if it can add to the force vector
					if(other.pushable)
					{
							ds_list_add(other.environmentVectMag, sqrt(power(xSpeed,2) + power(ySpeed,2)));
							ds_list_add(other.environmentVectDir, point_direction(x,y,x+xSpeed,y+ySpeed));
							ds_list_add(other.environmentVectDec, frict);
					}
					xSpeed = 0;
				}
			}
			if(place_meeting(x,(y)+ySpeed,other)){
			//check if the actor is enemy player interaction
				if(other.type == actor_type.enemy && type == actor_type.player)
				{
					ds_list_add(environmentVectMag, 5);
					ds_list_add(environmentVectDir, point_direction(other.x,other.y,x,y));
					ds_list_add(environmentVectDec, 5);
				}
				else //check if the actor is an enemery and the thing hittning is the player
					if(type == actor_type.enemy && other.type == actor_type.player)
					{
						ds_list_add(other.environmentVectMag, 5);
						ds_list_add(other.environmentVectDir, point_direction(x,y,other.x,other.y));
						ds_list_add(other.environmentVectDec, 5);
					}
				else{
					if(other.pushable){
						ds_list_add(other.environmentVectMag, sqrt(power(xSpeed,2) + power(ySpeed,2)));
						ds_list_add(other.environmentVectDir, point_direction(x,y,x+xSpeed,y+ySpeed));
						ds_list_add(other.environmentVectDec, frict);
					}
					ySpeed = 0;
				}
			}
		}
	}}//extra bracket for isSolid please dont hate me future jacob
}