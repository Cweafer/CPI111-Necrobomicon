/// @description check room of player and swap
var playerRoom = getActorRoom(Player_obj);

if(currentRoom != playerRoom)
	swapCurrentRoom(currentRoom,playerRoom);
	
updateRoomMods();

if(!roomCleared && roomLocks == roomKeys)
	roomCleared=true;
	
if(enemys = 0 && enemysData[currentRoom] > 0){roomKeys++}
