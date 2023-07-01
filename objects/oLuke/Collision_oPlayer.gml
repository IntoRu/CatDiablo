// высвечиваем восклицательный знак
with(other) readyMess = true

// если нет ключа и люк закрыт то пишем что заперто
if global.key == false and global.lockedLuke == true{
	entityActivateScript = NewTextBox
	if global.local == "RU" entityActiveteArgs = ["Заперто....",0]
	if global.local == "EN" entityActiveteArgs = ["Locked....",0]
}

// если есть ключ то открываем люк
if global.key == true {
	audio_play_sound(sndDoorOpen,5,false)
	global.lockedLuke = false	
	entityActivateScript = -1
	global.key = false
}

// переходим в погреб
if global.lockedLuke == false and keyboard_check_pressed(vk_space){
	entityActivateScript = RoomTransition(TRANS_TYPE.SLIDE,rCaveInForest) // в какую комнату
	// координаты
	global.targetX = 20 
	global.targetY = 300
	// куда будет смотреть игрок
	global.targetDirection = 0 // (0, 90, 180, 270)
} 

