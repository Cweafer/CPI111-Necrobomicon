/// @description Instantiate variables, set alarm
// You can write your code in this editor

font = font_explorer;
fontColor = c_black;
alignH = fa_left;	//fa_left, fa_center, fa_right
alignV = fa_top;	//fa_top, fa_middle, fa_bottom
textContent = "";	//"test";
textQueue = "";		//"queue";
textSecondsDelay = 0.2;
alarm_set(0,round(room_speed*textSecondsDelay));