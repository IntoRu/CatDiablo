// Inherit the parent event
event_inherited();
if (room == rNewVillage){
	global.count++
	if(global.count == 10){
		audio_play_sound(sndQuestLoss,5,false)
	}
} 

