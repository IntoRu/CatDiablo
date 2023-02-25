if(!keyPressed){
	titleVisible = min(1,titleVisible+0.01)
}
else{
	titleVisible = max(0,titleVisible-0.01)
	slotVisible = min(1,slotVisible+0.01)
}

if(keyboard_check_pressed(vk_up)){
	audio_play_sound(sndText,5,false)
	slotSelected -= 1
	if(slotSelected<0) slotSelected = 2
}
if(keyboard_check_pressed(vk_down)){
	audio_play_sound(sndText,5,false)
	slotSelected += 1
	if(slotSelected > 2) slotSelected = 0
}
if((keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space))) && (keyPressed) && (!loadingStarted){
	audio_play_sound(sndText,5,false)  
	global.gameSaveSlot = slotSelected
	if(!LoadGame(global.gameSaveSlot)){
		RoomTransition(TRANS_TYPE.SLIDE,rVillage)
	}
	loadingStarted = true
}

if(keyboard_check_pressed(vk_anykey)) {
	audio_play_sound(sndText,5,false)
	keyPressed = true
} 