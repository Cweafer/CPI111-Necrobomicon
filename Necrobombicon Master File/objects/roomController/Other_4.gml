/// @description Instantiate
// set up the room variables
global.floorNum = room;
currentRoom = getActorRoom(Player_obj);

//the following code is a template for setting a room;
//player properties for the current room
currentBombType = 0;
currentThrowType = 0;

//Room Modifiers
timedRoom = false;
maxTime = 0;

bombBag= false;
maxBombs= 0;

bombMagnet= false;

//now we set the floor data
setFloorData();