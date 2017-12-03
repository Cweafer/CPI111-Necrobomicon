var tHeight = 700;
var tWidth = 1300;
var CameraId = view_camera[0];

if(view_yport[0] + tHeight > bottomBound)
	//view_yport[0] = bottomBound-tHeight;
	camera_set_view_pos(CameraId,view_xport[0],bottomBound-tHeight);
if(view_yport[0] < topBound)
	//view_yport[0] = topBound;
	camera_set_view_pos(CameraId,view_xport[0],topBound);
if(view_xport[0] + tWidth > rightBound)
	//view_xport[0] = rightBound-tWidth;
	camera_set_view_pos(CameraId,rightBound-tWidth,view_yport[0]);
if(view_xport[0] < leftBound)
	//view_xport[0] = leftBound;
	camera_set_view_pos(CameraId,leftBound,view_yport[0]);
show_debug_message("yport:" +string(view_yport[0]));