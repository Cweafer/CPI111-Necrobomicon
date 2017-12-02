/// @description Insert description here
// You can write your code in this editor
if (roomDialogueMemory != roomController.currentDialogue) {
	textContent = ""
	textQueue = roomController.currentDialogue
	roomDialogueMemory = roomController.currentDialogue
	alarm_set(0,round(room_speed*textSecondsDelay))
}