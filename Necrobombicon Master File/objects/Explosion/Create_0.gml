/// @description Insert description here
// You can write your code in this editor
with(Actor_Obj){
	if(distance_to_object(other)<150){
	ds_list_add(environmentVectMag, (150 - distance_to_object(other))/5);
	ds_list_add(environmentVectDir, point_direction(other.x,other.y,x,y));
	ds_list_add(environmentVectDec, 5);
	show_debug_message("inExplosion");
	}
}