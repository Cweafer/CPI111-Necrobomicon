/// @description 
var radius = 150;
with(Actor_Obj){
	if(distance_to_object(other)<radius){
		addVector(self,(radius - distance_to_object(other))/5, point_direction(other.x,other.y,x,y), 5,self.id);
	}
	
}
//destroy destructable tiles
var tilemap = layer_tilemap_get_id("DestructableTiles");

var emptyTile = tile_set_empty(tilemap_get_at_pixel(tilemap, x,y));

tilemap_set_at_pixel(tilemap,emptyTile,x,y);
tilemap_set_at_pixel(tilemap,emptyTile,x+radius/2,y);
tilemap_set_at_pixel(tilemap,emptyTile,x-radius/2,y);
tilemap_set_at_pixel(tilemap,emptyTile,x,y+radius/2);
tilemap_set_at_pixel(tilemap,emptyTile,x,y-radius/2);