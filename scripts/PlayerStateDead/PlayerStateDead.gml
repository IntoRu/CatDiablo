
function PlayerStateDead(){
	hSpeed = 0
	vSpeed = 0
	
	if(sprite_index != spriteDie[level]) and (sprite_index != spriteDead[level]){
		sprite_index = spriteDie[level]
		image_speed = 0
		image_speed = 0.7	
	}
	
	if(image_index + image_speed > image_number){
		if(sprite_index == spriteDie[level]){
			image_speed = max(0,image_speed - 0.03)
			if(image_speed < 0.07){
				image_index = 0
				sprite_index = spriteDead[level]
				image_speed = 1
			}
		}
		else{
			image_speed = 0
			image_index = image_number - 1
			global.targetX = -1
			global.targetY = -1
			RoomTransition(TRANS_TYPE.SLIDE,rVillage)
		}
	}
}