

function SlimeWander(){
	sprite_index = sprMove
	
	//движение
	if((x == xTo) and (y == yTo)) or (timePassed > enemyWanderDistance/enemySpeed){
		hSpeed = 0
		vSpeed = 0
		
		if(image_index < 1){
			image_speed = 0.0
			image_index = 0
		}
		
		if(++wait >= waitDuration){
			wait = 0
			timePassed = 0
			dir = point_direction(x,y,xstart,ystart)+irandom_range(-45,45)
			xTo = x + lengthdir_x(enemyWanderDistance,dir)
			yTo = y + lengthdir_y(enemyWanderDistance,dir)
		}
	}
	else{
		timePassed++
		image_speed = 1.0
		var _distanceToGo = point_distance(x,y,xTo,yTo)
		var _speedThisFrame = enemySpeed
		if(_distanceToGo < enemySpeed) _speedThisFrame = _distanceToGo
		dir = point_direction(x,y,xTo,yTo)
		hSpeed = lengthdir_x(_speedThisFrame,dir)
		vSpeed = lengthdir_y(_speedThisFrame,dir)
		if(hSpeed != 0) image_xscale = sign(hSpeed)
		
		// коллизия
		var _collided = EnemyTileCollision()
	}
	
	// проверка агрессии врага
	if (++aggroCheck >= aggroCheckDuration){
		aggroCheck = 0
		if(instance_exists(oPlayer)) and (point_distance(x,y,oPlayer.x,oPlayer.y) <= enemyAggroRadius){
			state = ENEMYSTATE.CHASE
			target = oPlayer
		}
	}
}


// гонимся за игроком

function SlimeChese(){
	sprite_index = sprMove
	
	if(instance_exists(target)  and !instance_exists(oText) and oPlayer.state != PlayerStateDead){
		xTo = target.x
		yTo = target.y
		
		var _distanceToGo = point_distance(x,y,xTo,yTo)
		image_speed = 1.0
		dir = point_direction(x,y,xTo,yTo)
		if(_distanceToGo > enemySpeed){
			hSpeed = lengthdir_x(enemySpeed,dir)
			vSpeed = lengthdir_y(enemySpeed,dir)
		}
		else{
			hSpeed = lengthdir_x(_distanceToGo,dir)
			vSpeed = lengthdir_y(_distanceToGo,dir)
		}
		if(hSpeed != 0) image_xscale = sign(hSpeed)
		
		EnemyTileCollision()
	}
	
	// аттака
	if meleAttack == true{ // если враг аттакует оружием (реализованно только у монстра)
		if(instance_exists(target)) and (point_distance(x,y,target.x,target.y) <= enemyAttackRadius) and !instance_exists(oText) and oPlayer.state != PlayerStateDead and damagCuldown < 0 {
			state = ENEMYSTATE.ATTACK
			mask_index = spriteMaskAttack
			sprite_index = sprAttack
			image_index = 0
			image_speed = 1.0
			audio_play_sound(soundAttack,5,false)
			xTo += lengthdir_x(2,dir)
			yTo += lengthdir_y(2,dir)
			damagCuldown = timeFight // кулдавн аттаки
		} 
		else mask_index = spriteMask
	}
	else{
		if(instance_exists(target)) and (point_distance(x,y,target.x,target.y) <= enemyAttackRadius) and !instance_exists(oText) and oPlayer.state != PlayerStateDead{
		state = ENEMYSTATE.ATTACK
		sprite_index = sprAttack
		image_index = 0
		image_speed = 1.0
		audio_play_sound(soundAttack,5,false)
		xTo += lengthdir_x(8,dir)
		yTo += lengthdir_y(8,dir)
		} 
	}
}


function SlimeAttack(){
	var _spd = enemySpeed
	if(image_index < 2) _spd = 0
	if (floor(image_index) == 3) or (floor(image_index) == 5) image_speed = 0	
	var _distanceToGo = point_distance(x,y,xTo,yTo)
	if(_distanceToGo < 4) and (image_index < 5) image_speed = 1
	if(_distanceToGo > _spd){
		dir = point_direction(x,y,xTo,yTo)
		hSpeed = lengthdir_x(_spd,dir)*2
		vSpeed = lengthdir_y(_spd,dir)*2
		if(hSpeed != 0) image_xscale = sign(hSpeed)
		if(EnemyTileCollision() == true){
			xTo = x
			yTo = y
		}
	}
	else{
		x = xTo
		y = yTo
		if(floor(image_index) == 5){
			stateTarget = ENEMYSTATE.CHASE
			stateWaitDuration = 0
			state = ENEMYSTATE.WAIT
		}
	}
	
}


//function SkeletonAttack(){

//	var _spd = enemySpeed
//	if(image_index < 2) _spd = 0
//	if (floor(image_index) == 3) or (floor(image_index) == 5) image_speed = 0	
//	var _distanceToGo = point_distance(x,y,xTo,yTo)
//	if(_distanceToGo < 4) and (image_index < 5) image_speed = 1
//	if(_distanceToGo > _spd){
//		dir = point_direction(x,y,xTo,yTo)
//		hSpeed = lengthdir_x(_spd,dir)
//		vSpeed = lengthdir_y(_spd,dir)
//		if(hSpeed != 0) image_xscale = sign(hSpeed)
//		if(EnemyTileCollision() == true){
//			xTo = x 
//			yTo = y 
//		}
//	}
//	else{
//		x = xTo
//		y = yTo 
//		if(floor(image_index) == 5){
//			stateTarget = ENEMYSTATE.CHASE
//			stateWaitDuration = 15
//			state = ENEMYSTATE.WAIT
//		}
//	}
	
//}



function SlimeHurt(){
	sprite_index = sprHurt
	var _distanceToGo = point_distance(x,y,xTo,yTo)
	if(_distanceToGo > enemySpeed){
		image_speed = 1
		dir = point_direction(x,y,xTo,yTo)
		hSpeed = lengthdir_x(enemySpeed,dir)
		vSpeed = lengthdir_y(enemySpeed,dir)
		if(hSpeed != 0) image_xscale = -sign(hSpeed)
		if(EnemyTileCollision()){
			xTo = x
			yTo = y
		}
	}
	else{
		x = xTo
		y = yTo
		if(statePrevious != ENEMYSTATE.ATTACK){
			state = statePrevious;
		}  
		else{
			state = ENEMYSTATE.CHASE
		} 
	}
}



function SlimeDie(){
	//sprite_index = sprDie
	//image_speed = 1.0
	//var _distanceToGo = point_distance(x,y,xTo,yTo)
	//if(_distanceToGo > enemySpeed){
	//	dir = point_direction(x,y,xTo,yTo)
	//	hSpeed = lengthdir_x(enemySpeed,dir)
	//	vSpeed = lengthdir_y(enemySpeed,dir)
	//	if(hSpeed != 0) image_xscale = -sign(hSpeed)
		
	//	EnemyTileCollision()
	//}
	//else{
	//	x = xTo
	//	y = yTo
	//}
	
	//if(image_index + (sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps)) >= image_number){
	//	instance_destroy()
	//}
	
	instance_destroy()
}



