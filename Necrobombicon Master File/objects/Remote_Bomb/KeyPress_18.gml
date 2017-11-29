/// @description Insert description here
// You can write your code in this editor
var i;
var j = ds_list_size(environmentVectTyp);
for(i=0; i < j; i++){
	show_debug_message( ds_list_find_value(environmentVectTyp,i));
}