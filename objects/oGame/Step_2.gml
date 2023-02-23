///@desc Pause the Game
if(keyboard_check_pressed(vk_escape)) and (!instance_exists(oTransition)) and(oUI.visible == true){
	global.gamePaused = !global.gamePaused
	
	if(global.gamePaused){
		with(all){
			gamePausedImageSpeed = image_speed
			image_speed = 0
		}
	}
	else{
		image_speed = gamePausedImageSpeed
	}
}