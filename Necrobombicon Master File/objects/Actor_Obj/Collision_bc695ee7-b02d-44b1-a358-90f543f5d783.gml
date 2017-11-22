/// @description handles moving around loose objects
// which should bounce off each other and transfer velecity
if(destroyOnCollide)
	instance_destroy();
if(isSolid&&canPush) addVector(other,5+sqrt(power(xSpeed,2) + power(ySpeed,2)),point_direction(x,y,other.x,other.y),10,self.id);
//note: remember to add handler for friction later (currently set to 10 as a default)