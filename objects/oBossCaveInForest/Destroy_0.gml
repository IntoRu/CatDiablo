// Inherit the parent event

event_inherited();
audio_play_sound(sndBatDie,5,false)

instance_deactivate_object(oDoorClose)
audio_play_sound(sndDoorOpen,5,false)

global.informationAboutMonster = true
audio_play_sound(sndCheck,5,false)
audio_stop_sound(sndBoss1Fight)
audio_play_sound(sndNewCove,5,true)
