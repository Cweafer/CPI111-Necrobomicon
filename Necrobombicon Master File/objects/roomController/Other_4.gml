/// @description Instantiate

//enum containing types of bombs used in many places
enum bombType {
	base,
	remote,
	fuse,
	grenade,
	rocket,
	bounce
}

// set up the room variables
global.floorNum = room;
currentRoom = getActorRoom(Player_obj);

//the following code is a template for setting a room;
//player properties for the current room
currentBombType = bombType.base;
roomCleared = false;
roomLocks = 0;
roomKeys = 0;

//Room Modifiers
timedRoom = false;
maxTime = 0;

bombBag= false;
maxBombs= 0;

bombMagnet= false;

//now we set the floor data
setFloorData();