/// @description Insert description here
// You can write your code in this editor
if(other.isSolid && isSolid){
	var pushDir = 0;
	if(!(other.x == x && other.y ==y)) pushDir = point_direction(other.x,other.y,x,y);
	addVector(self,10,pushDir,1.5);
	actorIn=true;	
}