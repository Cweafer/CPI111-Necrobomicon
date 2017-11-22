var emptyTile = tile_set_empty(tilemap_get_at_pixel(argument[1], x,y));

var i = 2;
while(i < argument_count)
{
	var current = argument[i];
	tilemap_set_at_pixel(argument[0], emptyTile, current[0], current[1]);
	i++;
}

//return found;