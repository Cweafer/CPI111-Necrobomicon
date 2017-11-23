///@param previous_room
///@param new_room
var previousRoom = argument0;
var newRoom = argument1;

//show_debug_message("going from room " +string(previousRoom) + " to " + string(newRoom));

currentBombType = bombTypeData[newRoom];


//Room Modifiers
timedRoom = timedRoomData[newRoom];
maxTime = maxTimeData[newRoom];

bombBag = bombBagData[newRoom];
maxBombs = maxBombsData[newRoom];

bombMagnet = bombMagnetData[newRoom];

//room cleared data
roomLocks = roomLocksData[newRoom];
roomKeys = roomKeysData[newRoom];
roomCleared = roomClearedData[newRoom];
enemys = enemysData[newRoom];

//make sure the previous room stays cleared
roomLocksData[currentRoom] = 0;
roomKeysData[currentRoom] = 0;

//finally switch out the room
currentRoom = newRoom;