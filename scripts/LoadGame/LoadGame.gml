

//// функция загрузки игры
//function LoadGame(_slot){
//	global.gameSaveSlot = _slot
//	var _file = "save"+string(global.gameSaveSlot)+".sav"
	
//	if(file_exists(_file)){
//		// загрузка игровых данных из джейсон файла
//		var _json = LoadJSONFromFile(_file)
//		// и записываем в глобальные переменные
//		global.level = _json[? "level"]
//		//global.playerHealth[global.level] = _json[? "playerHealth"]
//		global.playerMoney = _json[? "playerMoney"]

//		global.playerEquipped = _json[? "playerEquipped"]
//		global.playerHasAnyItems = _json[? "playerHasAnyItems"]
//		global.targetX = _json[? "targetX"]
//		global.targetY = _json[? "targetY"]
		
//		// и массивы
//		for(var i=0;i<ITEM.TYPE_COUNT;i++){
//			global.playerItemUnlocked[i] = _json[? "playerItemUnlocked"][| i]
//			global.playerAmmo[i] = _json[? "playerAmmo"][| i]
//		}
//		// антираспаувнская хуйня
//		for(var j=0;j<array_length(global.entityDeath);j++){
//			global.entityDeath[j] = _json[? "entityDeath"][| j]
//		}
//		// загрузка прогресса квестов
//		ds_map_copy(global.questStatus,_json[? "questStatus"])
//		// и напоследок загружаем комнату
//		RoomTransition(TRANS_TYPE.SLIDE,_json[? "room"])
		
//		ds_map_destroy(_json)
		
//		return true
//	}
//	else{
//		show_debug_message("no saving in this slot")
//		return false
//	}
//}

//// функция загрузки карты сохранения из строки джейсон
//function LoadJSONFromFile(_filename){
//	var _buffer = buffer_load(_filename)
//	var _string = buffer_read(_buffer,buffer_string)
//	buffer_delete(_buffer)
//	var _json = json_decode(_string)
//	return _json
//}


function LoadGame(_slot){
	global.gameSaveSlot = _slot
	var _file = "save"+string(global.gameSaveSlot)+".sav"
	if(file_exists(_file)){
		
		var _json = LoadJSONFromFile(_file)
		
		global.playerHealth[global.level] = _json[? "playerHealth"]
		global.playerHealthMax[global.level] = _json[? "playerHealthMax"]
		global.deathCount = _json[? "deathCount"]
		global.level = _json[? "level"]
		global.playerMoney = _json[? "playerMoney"]
		global.playerEquipped = _json[? "playerEquipped"]
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

