///@params floor_number
//here we reset the arrays
bombTypeData = 0;
timedRoomData = 0;
maxTimeData = 0;
bombBagData = 0;
maxBombsData = 0;
bombMagnetData = 0;
roomClearedData = 0;
roomLocksData = 0;
roomKeysData = 0;
enemysData = 0;

var roomNum = 0; 
switch(global.floorNum)
{
case 0: //this is our default case, its just menus and stuff
	//we set these to make sure its an array
break; 

case 1://this is the first floor of the game
	/////////////////////////////////////////////////////
	//room 1 start
	roomNum = 1; 
	
	bombTypeData[roomNum] = bombType.rocket;
	setRoomLocks(roomNum);
	
	setDefaultMods(roomNum);
	/////////////////////////////////////////////////////
	//room2 start
	roomNum = 2; 

	bombTypeData[roomNum] = bombType.bounce;
	setRoomLocks(roomNum);

	setDefaultMods(roomNum);
	bombMagnetData[roomNum] = false;
	/////////////////////////////////////////////////////
	rooms = 2;//here we set the total number of rooms on the floor
break;


}
//get information about actors in rooms
with(Enemy_Obj){
	roomController.enemysData[actorRoom]++;
}
var i;
for(i = 1; i<=rooms; i++;){
	if(enemysData[i]>0) roomLocksData[i]++;
}

with(Puzzle_Obj){
	
}
