
function LoadGame(_slot){
	global.gameSaveSlot = _slot
	var _file = "save"+string(global.gameSaveSlot)+".sav"
	if(file_exists(_file)){
		
		var _json = LoadJSONFromFile(_file)

		global.strong = _json[? "strong"]
		global.lightNight = _json[? "lightNight"]
		global.day = _json[? "day"]
		global.count = _json[? "count"]
		global.informationAboutMonster = _json[? "informationAboutMonster"]
		global.level = _json[? "level"]
		global.playerHealth[global.level] = _json[? "playerHealth"]
		global.playerHealthMax[global.level] = _json[? "playerHealthMax"]
		global.deathCount = _json[? "deathCount"]
		global.playerMoney = _json[? "playerMoney"]
		global.playerEquipped = _json[? "playerEquipped"]
		
		// загружаем меч
		global.swordEquipped = _json[? "swordEquipped"]
		// загружаем луки
		global.newBowEquipped = _json[? "newBowEquipped"]
		// загружаем броню
		global.armorEquipped = _json[? "armorEquipped"]
		
		// загружаем урон от меча
		global.slashDamage = _json[? "slashDamage"]
		// загружаем урон от лука
		global.bowDamage = _json[? "bowDamage"]
		
		global.playerHasAnyItems = _json[? "playerHasAnyItems"]
		global.targetX = _json[? "targetX"]
		global.targetY = _json[? "targetY"]
	
		
		for (var i=0;i<ITEM.TYPE_COUNT;i++){
			global.playerItemUnlocked[i] = _json[? "playerItemUnlocked"][| i]
			global.playerAmmo[i] = _json[? "playerAmmo"][| i]
		}
		for(var i=0;i<global.deathCount;i++){
			global.entityDeath[i] = _json[? "entityDeath"][| i]
		}
			
		ds_map_copy(global.questStatus, _json[? "questStatus"])
		
		
		RoomTransition(TRANS_TYPE.SLIDE,_json[? "room"])
		ds_map_destroy(_json)
		
		return true
	}
	else{
		show_debug_message("no save in this slot")
		return false
	}
}

// загрузка джейсона из файла
function LoadJSONFromFile(_filename){
	var _buffer = buffer_load(_filename)
	var _string = buffer_read(_buffer, buffer_string)
	buffer_delete(_buffer)
	var _json = json_decode(_string)
	return _json
	
}

