///@description this script checks a bounding box at 4 corners for collision with the two solid tile layers
//where it differs from check is that it returns all offending tiles
///@param object
///@param offset_x
///@param offset_y
return(checkTileAtPoints(layer_tilemap_get_id("CollisionTiles"), layer_tilemap_get_id("DestructableTiles"), [argument0.bbox_right+argument1,argument0.bbox_top+argument2],[argument0.bbox_right+argument1,argument0.bbox_bottom+argument2],[argument0.bbox_left+argument1,argument0.bbox_top+argument2],[argument0.bbox_left+argument1,argument0.bbox_bottom+argument2]))