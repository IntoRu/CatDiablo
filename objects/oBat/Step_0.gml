// Inherit the parent event
event_inherited();

if sprite_index = sBatHurt and soundStepHit = true{
	if oPlayer.state != PlayerStateDead audio_play_sound(sndBatHit,5,false)
	soundStepHit = false
	alarm[0] = 80
}