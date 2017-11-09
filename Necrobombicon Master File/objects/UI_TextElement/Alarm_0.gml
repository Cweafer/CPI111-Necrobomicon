/// @description Push from queue to text
// You can write your code in this editor
if string_length(textQueue) > 0 {
	textContent = string_insert(string_copy(textQueue,1,1),textContent,string_length(textContent)+1);
	textQueue = string_delete(textQueue,1,1);
	alarm_set(0,round(room_speed*textSecondsDelay));
}