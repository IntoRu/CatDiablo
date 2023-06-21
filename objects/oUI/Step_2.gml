// скрываем UI на титульном экране
if(room == rTitle) visible = false
else visible = true


// показывем UI
if(global.gamePaused){
	keyUp = keyboard_check_pressed(vk_up)
	keyDown = keyboard_check_pressed(vk_down)
	pauseOptionSelected += (keyDown-keyUp)
	if(pauseOptionSelected >= array_length(pauseOption)) pauseOptionSelected = 0
	if(pauseOptionSelected < 0) pauseOptionSelected = array_length(pauseOption) - 1
	
	keyActivate = keyboard_check_pressed(vk_space)
	
	// звуки
	if keyUp or keyDown or keyActivate audio_play_sound(sndText,5,false)
	if(keyActivate){
		switch(pauseOptionSelected){
			case 0:// продолжить
			{
				global.gamePaused = false
				with(all){
					gamePausedImageSpeed = image_speed
					image_speed = 0
				}
			}break;
			case 1: //сохранить и продолжить
			{
				//with(oGame) instance_destroy()
				global.gamePaused = false
				with(all){
					gamePausedImageSpeed = image_speed
					image_speed = 0
				}
				SaveGame()	
				//game_restart()
			}break;
			case 2: // сохранить и выйти в виндовс
			{
				SaveGame()
				//game_end()
				game_restart()
			}break;
			case 3:{// выйти без сохранения
				//game_end()
				game_restart()
			}break
			case 4:{// начать новую игру
				file_delete("save"+string(global.gameSaveSlot)+".sav")
				game_restart()
			}break
		}
	}
}