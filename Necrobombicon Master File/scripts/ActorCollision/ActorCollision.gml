//handles collisions between objects

if(isSolid){
	if(place_meeting((x)+xSpeed,y,Actor_Obj)){ xSpeed = 0; show_debug_message("col");}
	if(place_meeting(x,(y)+ySpeed,Actor_Obj)) ySpeed = 0;
}