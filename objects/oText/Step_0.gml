var _messageLength = string_length(messege)
lerpProgress += (1 - lerpProgress) / 50
textProgress += global.textSpeed

x1 = lerp(x1,x1Target,lerpProgress)
x2 = lerp(x2,x2Target,lerpProgress)

// просмотр ответов
keyUp = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))
keyDown = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))
responseSelected += (keyDown - keyUp)
var _max = array_length_1d(responses) - 1
var _min = 0
if(responseSelected > _max) responseSelected = _min
if(responseSelected < _min) responseSelected = _max

// звуки
if keyUp or keyDown audio_play_sound(sndText,5,false)

if(textProgress <= _messageLength) and soundStep = true{
	audio_play_sound(sndText,5,false,0.1,0,1)
	soundStep = false
	alarm[0] = 5
}

// если сообщение прочитано и нажать пробел текстовое окно уничтожется
// если не прочитано то ускорится
if(oPlayer.keyActivate){
	//var _messageLength = string_length(messege)
	if(textProgress >= _messageLength){
		if(responses[0] != -1){
			with(originInstances){
				DialogueResponses(other.responseScripts[other.responseSelected])
			}
		}
		
		instance_destroy()
		
		// сдвигаем очередь диалогов
		if(instance_exists(oTextQueued)){
			with(oTextQueued) ticket--
		}
		else{
			with(oPlayer) state = lastState
		}
	}
	else{
		if(textProgress > 2){
			textProgress = _messageLength
		}
	}
}