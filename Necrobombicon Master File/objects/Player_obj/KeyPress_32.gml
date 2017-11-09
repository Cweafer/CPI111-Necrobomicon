/// @description Insert description here
// You can write your code in this editor
with(instance_create_layer(lengthdir_x(60,intendedDir)+x,lengthdir_y(70,intendedDir)+y, "instances", Bomb_Obj)){
	ds_list_add(environmentVectMag, 2);
	ds_list_add(environmentVectDir, other.intendedDir);
	ds_list_add(environmentVectDec, 10);
}