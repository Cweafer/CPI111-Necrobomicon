/// @description 
// health bar
draw_sprite(healthbar_base_spr,0,x,y);
for (i = 1; i <= Player_obj.healthCurrent; i++)
{
	draw_sprite(healthbar_unit_spr,0,x + (sprite_get_width(healthbar_base_spr) / 2) - (sprite_get_width(healthbar_unit_spr) / 2),y - (i * sprite_get_height(healthbar_unit_spr)));
}
