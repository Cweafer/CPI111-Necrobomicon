/// @description check room of player and swap
var playerRoom = getActorRoom(Player_obj);

if(currentRoom != playerRoom)
	swapCurrentRoom(currentRoom,playerRoom);