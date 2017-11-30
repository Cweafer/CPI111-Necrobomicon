///@param previous_room
///@param new_room

var previousRoom = argument0;
var newRoom = argument1;

instance_activate_object(Actor_Obj);
with(Actor_Obj){
	currentRoom = getActorRoom(self);
	if(currentRoom != newRoom){
		instance_deactivate_object(self)
	}
}
