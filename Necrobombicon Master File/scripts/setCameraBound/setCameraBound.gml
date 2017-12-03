///@param curRoom
//Here we bound the camera to what we know will be the room restriction
var curRoom = argument0;

var tilemapId = layer_tilemap_get_id("roomTiles");
var CameraId = view_camera[0];
var vScroll = false;
var hScroll = false;

//calculate the x and y bounds of the current room


var tWidth = tilemap_get_tile_width(tilemapId);
var tHeight = tilemap_get_tile_height(tilemapId);
var tX = tilemap_get_cell_x_at_pixel(tilemapId, Player_obj.x,Player_obj.y);
var tY = tilemap_get_cell_y_at_pixel(tilemapId, Player_obj.x,Player_obj.y);

//check right
var found = false;
var i = 0;
while(!found){
	if(tilemap_get(tilemapId,tX-(i+1),tY) == curRoom)
		i++;
	else
		found = true;
}

leftBound = (tX-i) * tWidth;

found = false;
var j = 0;
while(!found){
	if(tilemap_get(tilemapId,tX+j,tY) == curRoom)
		j++;
	else
		found = true;
}

rightBound = (tX + j) * tWidth;

found = false;
i = 0;
while(!found){
	if(tilemap_get(tilemapId,tX,tY-(i+1)) == curRoom)
		i++;
	else
		found = true;
}

topBound = (tY - i) * tHeight;

found = false;
j = 0;
while(!found){
	if(tilemap_get(tilemapId,tX,tY+j) == curRoom)
		j++;
	else
		found = true;
}


bottomBound = (tY + j) * tHeight;

	
	
//set the camera clamp to the positions we've calculated 
//camera_set_view_pos(CameraId,
//					clamp( camera_get_view_x(CameraId), rightBound, leftBound),
//					clamp( camera_get_view_y(CameraId), topBound, bottomBound));
					
show_debug_message("rightBound: " + string(rightBound));
show_debug_message("leftBound: " + string(leftBound));
show_debug_message("topBound: " + string(topBound));
show_debug_message("bottomBound: " + string(bottomBound));


//set borders for following the player
//if the room is size 1 we leave them zero
var bX = 0;
var bY = 0;
//if(rightBound - leftBound > 1300) bX = 500;
//if(bottomBound-topBound > 700) bY = 500;

//camera_set_view_border(CameraId,bX,bY);