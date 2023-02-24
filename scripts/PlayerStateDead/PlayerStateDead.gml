
function PlayerStateDead(){
	hSpeed = 0
	vSpeed = 0
	
	if(sprite_index != global.spriteDie[global.level]) and (sprite_index != global.spriteDead[global.level]){
		sprite_index = global.spriteDie[global.level]
		image_speed = 0
		image_speed = 0.7	
		//global.playerMoney -= 5
		if(global.playerMoney >=10){
			global.playerMoney -= floor(global.playerMoney*0.3)
		}
	}
	
	if(image_index + image_speed > image_number){
		if(sprite_index == global.spriteDie[global.level]){
			image_speed = max(0,image_speed - 0.03)
			if(image_speed < 0.07){
				image_index = 0
				sprite_index = global.spriteDead[global.level]
				image_speed = 1
			}
		}
		else{
			image_speed = 0
			image_index = image_number - 1
			global.targetX = -1
			global.targetY = -1
			//RoomTransition(TRANS_TYPE.SLIDE,rVillage)
			// появляемся в комнате последнего сохранения
			var _file = "save"+string(global.gameSaveSlot)+".sav"
			if(file_exists(_file)){
				var _json = LoadJSONFromFile(_file)
				RoomTransition(TRANS_TYPE.SLIDE,_json[? "room"])
				ds_map_destroy(_json)
			}
		}
	}
	
}