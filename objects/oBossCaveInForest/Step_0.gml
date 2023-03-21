// Inherit the parent event
event_inherited();

if sprite_index = sBossCaveInForest_hurt and soundStepHit = true{
	if oPlayer.state != PlayerStateDead  audio_play_sound(sndBatHit,5,false)
	soundStepHit = false
	alarm[0] = 80
}

if spawnEnemy = true and enemyHP < maxHP {
	var _slime = instance_create_layer(x,y,"Instances",oSLime)
	var _bulletWeb = instance_create_layer(x,y-20,"Instances",oBulletWeb)
	audio_play_sound(sndHark,10,false)
	spawnEnemy = false
	alarm[1] = spawnTime
	with(_slime){
		enemyHP = 5
		enemySpeed = 1.0
		enemyAggroRadius = 70
		enemyDamageTouch = 0.1
		enemyForceTouch = 40	
	}
	with(_bulletWeb){
		move_towards_point(oPlayer.x,oPlayer.y,3)
	}
}