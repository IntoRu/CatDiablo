
//function SaveGame(){
//	//создание карты сохранения
//	var _map = ds_map_create()
	
//	// заносим данные в карту
//	_map[? "room"] = room
//	_map[? "entityDeath"] = global.entityDeath
//	_map[? "level"] = global.level
//	//_map[? "playerHealth"] = global.playerHealth[global.level]
//	_map[? "playerMoney"] = global.playerMoney
//	_map[?"playerItemUnlocked"] = global.playerItemUnlocked
//	_map[?"playerAmmo"] = global.playerAmmo 
//	_map[?"playerEquipped"] = global.playerEquipped
//	_map[?"lpayerHasAnyItems"] = global.playerHasAnyItems
//	_map[?"targetX"] = global.targetX
//	_map[?"targetY"] = global.targetY
	
//	// сохранение прогрессии квестов(напрямую сохранить их не получится)
//	var _questMap = ds_map_create()
//	ds_map_copy(_questMap,global.questStatus)
//	ds_map_add_map(_map,"questStatus",_questMap)
	
//	// превращаем всю карту в строку
//	var _string = json_encode(_map)
	
//	//записываем файл с сохранением
//	SaveStringToFile("save"+string(global.gameSaveSlot)+".sav",_string)
//	show_debug_message(_string)
	
//	// уничтожаем карту сохранения
//	ds_map_destroy(_map)
//	show_debug_message("Game saved!")
//}

//// функция сохранения строки джейсон в файл
//function SaveStringToFile(_filename,_string){
//	var _buffer = buffer_create(string_byte_length(_string)+1,buffer_fixed,1)
//	buffer_write(_buffer,buffer_string,_filename)
//	buffer_save(_buffer,_filename)
//	buffer_delete(_buffer)
//}


function SaveGame(){
	//создаём карту сохранения
	var _map = ds_map_create()
	
	
	// добавляем в эту карту вещи которые надо сохранять
	_map[? "room"] = room
	_map[? "level"] = global.level

	
	//_map[? "playerHealth"] = global.playerHealth
	//_map[? "playerHealthMax"] = global.playerHealthMax
	_map[? "deathCount"] = global.deathCount 
	_map[? "playerMoney"] = global.playerMoney
	_map[? "playerItemUnlocked"] = global.playerItemUnlocked
	_map[? "playerAmmo"] = global.playerAmmo
	_map[? "playerEquipped"] = global.playerEquipped
	_map[? "playerHasAnyItems"] = global.playerHasAnyItems
	_map[? "targetX"] = global.targetX
	_map[? "targetY"] = global.targetY
	_map[? "entityDeath"] = global.entityDeath
	
	// создаём карту квестов
	var _questMap = ds_map_create()
	ds_map_copy(_questMap,global.questStatus)
	ds_map_add_map(_map,"questStatus",_questMap)
	
	
	// сохраним всё в виде строки
	var _string = json_encode(_map)
	SaveStringToFile("save"+string(global.gameSaveSlot)+".sav",_string)
	show_debug_message(_string)
	
	// уничтожаем данные
	ds_map_destroy(_map)
	show_debug_message("Game saved!!!")
	
}

// фнкция сохранения сторки в файл
function SaveStringToFile(_filename,_string){
	var _buffer = buffer_create(string_byte_length(_string)+1,buffer_fixed,1)
	buffer_write(_buffer,buffer_string,_string)
	buffer_save(_buffer,_filename)
	buffer_delete(_buffer)
}




