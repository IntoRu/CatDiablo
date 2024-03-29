
function BatChese(){
	sprite_index = sprMove
	
	if(instance_exists(target)  and !instance_exists(oText)){
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
}

function BatWander(){
	sprite_index = sprMove
	image_speed = 1
	
	//движение
	if((x == xTo) and (y == yTo)) or (timePassed > enemyWanderDistance/enemySpeed){
		hSpeed = 0
		vSpeed = 0
		
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