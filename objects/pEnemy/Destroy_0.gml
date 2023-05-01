// Inherit the parent event
event_inherited();
if (room == rNewVillage){
	global.count++
	if(global.count == 10){
		audio_play_sound(sndQuestLoss,5,false)
	}
} 
if (room == rStrangeHome){
	global.countSkeleton++
	if(global.countSkeleton == 5){
		audio_play_sound(sndQuestLoss,5,false)
	}
} 

