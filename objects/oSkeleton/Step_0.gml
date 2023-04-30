// Inherit the parent event
event_inherited();

// звук урона
if sprite_index = sprHurt and soundStepHit = true{
	if oPlayer.state != PlayerStateDead audio_play_sound(sndSkeletonHit,5,false)
	soundStepHit = false
	alarm[0] = 80
}

