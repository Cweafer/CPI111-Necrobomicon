///@param previous_room
///@param new_room
var previousRoom = argument0;
var newRoom = argument1;

show_debug_message("going from room " +string(previousRoom) + " to " + string(newRoom));

currentBombType = bombTypeData[newRoom];

//Room Modifiers
timedRoom = timedRoomData[newRoom];
maxTime = maxTimeData[newRoom];

bombBag = bombBagData[newRoom];
maxBombs = maxBombsData[newRoom];

bombMagnet = bombMagnetData[newRoom];


//finally switch out the room
currentRoom = newRoom;