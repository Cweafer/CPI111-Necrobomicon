/// @description check room of player and swap
var playerRoom = getActorRoom(Player_obj);

if(currentRoom != playerRoom)
	swapCurrentRoom(currentRoom,playerRoom);
	
updateRoomMods();

if(!roomCleared && roomLocks == roomKeys)
	roomCleared=true;
	
if(enemys = 0 && enemysData[currentRoom] > 0){roomKeys++}


// death
if (Player_obj.healthCurrent <= 0 && playing)
{
	playing = false;
	Player_obj.canMove = false;
	Player_obj.intendedSpeed = 0;
	Player_obj.moveSpeed = 0;
	alarm[0] = 3 * room_speed;
}

boundCameraToRoom();