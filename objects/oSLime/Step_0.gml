// Inherit the parent event
event_inherited();

// звук урона
if sprite_index = sSlimeHurt and soundStepHit = true{
	if oPlayer.state != PlayerStateDead audio_play_sound(sndSlimeHit,5,false)
	soundStepHit = false
	alarm[0] = 80
}

