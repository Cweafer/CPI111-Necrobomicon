/// @description 
draw_set_font(font_explorer);
if (global.actor_allowUpdate == false) // if game is paused
{
	draw_text(345,245,"Game is paused.\nPress ESC to continue.");
}

currentX = 25;
currentY = camera_get_view_height(view_camera[0]) - sprite_get_height(healthbar_base_spr) - 25;

// health bar
draw_sprite(healthbar_base_spr,0,currentX,currentY);
for (i = 1; i <= Player_obj.healthCurrent; i++)
{
	draw_sprite(healthbar_unit_spr,0,currentX + (sprite_get_width(healthbar_base_spr) / 2) - (sprite_get_width(healthbar_unit_spr) / 2),currentY - (i * sprite_get_height(healthbar_unit_spr)));
}
currentX += sprite_get_width(healthbar_base_spr) + 10;
// bomb icon
draw_sprite(sigil_clear_spr,0, currentX,currentY);	// background image
switch(Player_obj.currentBombType)
{
	default: draw_sprite(bombicons_base_spr,0,currentX,currentY); break;  // includes base bomb
}
currentX += sprite_get_width(sigil_clear_spr) + 10;
// sigil icon
switch(Player_obj.currentSigType)
{
	case sigType.fire: draw_sprite(sigil_fire_spr,0,currentX,currentY); break;
	default: draw_sprite(sigil_clear_spr,0,currentX,currentY); break;	// includes clear
}
currentX += sprite_get_width(sigil_clear_spr) + 10;
// necrobombicon and talk box will go here