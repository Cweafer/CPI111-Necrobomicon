//check tile at points
///@param tilemapid
///@param points

var found = false;
int i =0;
while(!found && i <argument_count;)
{
	var current = argument[i];
	found = tilemap_get_at_pixel(argument0, current[0], current[1]);
	i++;
}
return found;