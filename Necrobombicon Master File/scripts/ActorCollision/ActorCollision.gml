//handles collisions between objects
var frict = 10;//change this when we have a place to put it
var force = 1; //see above note
var xCol = false;
var yCol = false;

var colisions = 0;

if(global.actor_allowUpdate){
	if(isSolid&&!actorIn){//this checks the current object
		with(Actor_Obj){ 
			if(isSolid&&!actorIn){ //this checks the object it's colliding with
				if(place_meeting((x)+xSpeed,y,other)) xCol = true; 
				if(place_meeting(x,(y)+ySpeed,other)) yCol = true;
				//handle extra environmental vectors
				if(xCol || yCol)
				{ colisions++;
					//check if the object can be pushed and if it can add to the force vector
					if(other.pushable)
						addVector(other,sqrt(power(xSpeed,2) + power(ySpeed,2)),point_direction(x,y,x+xSpeed,y+ySpeed),frict);
					if((other.type == actor_type.player && type == actor_type.enemy) || (type == actor_type.player && other.type == actor_type.enemy))
						{xCol = false; yCol = false;}
				}
				if(xCol) { xSpeed = 0; }
				if(yCol) { ySpeed = 0; }
			}
			if(colisions>5) break;
		}
	}
	else actorIn=false;
}
