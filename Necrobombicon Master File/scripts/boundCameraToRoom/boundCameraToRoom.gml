var tHeight = 700;
var tWidth = 1300;
var CameraId = view_camera[0];

//set this in one place so its not confusing for people
//this is the size of the follow border in pixels
var border = 250;

var xB = border;
var yB = border;

//check if the camera is out of bounds and move it back if so
if(camera_get_view_y(CameraId) + tHeight > bottomBound){
	camera_set_view_pos(CameraId,camera_get_view_x(CameraId),bottomBound-tHeight);
}
if(camera_get_view_y(CameraId) < topBound){
	camera_set_view_pos(CameraId,camera_get_view_x(CameraId),topBound);
}
if(camera_get_view_x(CameraId) + tWidth > rightBound){
	camera_set_view_pos(CameraId,rightBound-tWidth,camera_get_view_y(CameraId));
}
if(camera_get_view_x(CameraId) < leftBound){
	camera_set_view_pos(CameraId,leftBound,camera_get_view_y(CameraId));
}

//now we set the borders for following the player
//we have to make sure we're not near a bound before hand

if(Player_obj.x -leftBound <= border)
	xB = 0;

if(rightBound - Player_obj.x <= border)
	xB = 0;
	
if(Player_obj.y -topBound <= border)
	yB = 0;

if(bottomBound - Player_obj.y <= border)
	yB = 0;

//if(camera_get_view_border_x(CameraId) != xB || camera_get_view_border_y(CameraId) != yB)
	camera_set_view_border(CameraId,xB,yB);