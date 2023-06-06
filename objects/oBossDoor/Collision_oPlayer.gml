
if (instance_exists(oBossCaveInForest)){
	global.fight = true
	audio_stop_all()
	instance_activate_object(oDoorClose)
	audio_play_sound(sndDoorOpen,5,false)
	audio_play_sound(sndBoss1Fight,1,true)
	instance_destroy()
	
} 
