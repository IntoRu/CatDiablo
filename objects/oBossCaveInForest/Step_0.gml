// Inherit the parent event
event_inherited();

if sprite_index = sBossCaveInForest_hurt and soundStepHit = true{
	if oPlayer.state != PlayerStateDead  audio_play_sound(sndBatHit,5,false)
	soundStepHit = false
	alarm[0] = 80
}

if spawnEnemy = true and enemyHP < maxHP {
	var _slime = instance_create_layer(x,y,"Instances",oSLime)
	spawnEnemy = false
	alarm[1] = 200
	with(_slime){
		enemyHP = 5
		enemySpeed = 2.0
		enemyAggroRadius = 70
		enemyDamageTouch = 0.1
		enemyForceTouch = 40
		
	}
}