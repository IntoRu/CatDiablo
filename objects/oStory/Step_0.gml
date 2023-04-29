lerpProgress += (1 - lerpProgress)/50
textProgress += textSpeed

x1 = lerp(x1,x1Target,lerpProgress)
x2 = lerp(x2,x2Target,lerpProgress)

if(keyboard_check_pressed(vk_space)){
	var _messageLength = string_length(messege)
	if(textProgress >= _messageLength){ // если сообщение прочитано полностью удаляем обьект и переходим в игру
		instance_destroy()
		if (instance_exists(oTextQueued)){
			with (oTextQueued) ticket--
		}
		RoomTransition(TRANS_TYPE.SLIDE,ROOM_NEW_GAME)
	}
	else{// если прочитано не полностью выводим всё сообщение
		if(textProgress > 2){
			textProgress = _messageLength
		}
	}
}