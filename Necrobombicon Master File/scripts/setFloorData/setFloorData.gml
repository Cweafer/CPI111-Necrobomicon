///@params floor_number
//here we reset the arrays
bombTypeData = 0;
throwTypeData = 0;
timedRoomData = 0;
maxTimeData = 0;
bombBagData = 0;
maxBombsData = 0;
bombMagnetData = 0;

var roomNum = 0; 
switch(global.floorNum)
{
case 0: //this is our default case, its just menus and stuff
break; 

case 1://this is the first floor of the game
	/////////////////////////////////////////////////////
	//room 1 start
	roomNum = 1; 

	bombTypeData[roomNum] = 0;
	throwTypeData[roomNum] = 0;

	setDefaultMods(roomNum);
	/////////////////////////////////////////////////////
	//room2 start
	roomNum = 2; 

	bombTypeData[roomNum] = 0;
	throwTypeData[roomNum] = 0;

	setDefaultMods(roomNum);
	/////////////////////////////////////////////////////
	
break;


}
