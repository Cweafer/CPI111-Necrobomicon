//check tile at points
///@param tilemapid
///@param points...

var found = false;
var int i = 1;
while(!found && i < argument_count)
{
	var current = argument[i];
	found = found || tilemap_get_at_pixel(argument[0], current[0], current[1]);
	i++;
}
return found;