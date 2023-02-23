if(!keyPressed){
	titleVisible = min(1,titleVisible+0.01)
}
else{
	titleVisible = max(0,titleVisible-0.01)
	slotVisible = min(1,slotVisible+0.01)
}

if(keyboard_check_pressed(vk_up)){
	slotSelected -= 1
	if(slotSelected<0) slotSelected = 2
}
if(keyboard_check_pressed(vk_down)){
	slotSelected += 1
	if(slotSelected > 2) slotSelected = 0
}
if((keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space))) && (keyPressed) && (!loadingStarted){
	global.gameSaveSlot = slotSelected
	if(!LoadGame(global.gameSaveSlot)){
		RoomTransition(TRANS_TYPE.SLIDE,rVillage)
	}
	loadingStarted = true
}

if(keyboard_check_pressed(vk_anykey)) keyPressed = true