/// @description Insert description here
// You can write your code in this editor


//open the door if the room is cleared
if(!roomController.roomCleared ){
	//but first check if the player is in a doorway
	with(Player_obj)
		if(!place_meeting(x,y,other)) 
			instance_destroy(other);
}