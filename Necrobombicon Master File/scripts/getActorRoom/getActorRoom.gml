//returns the current room of an actor
///@param actorObj

var Actor = argument0;
var tilemap = layer_tilemap_get_id("roomTiles");
return(tilemap_get_at_pixel(tilemap, Actor.x,Actor.y));