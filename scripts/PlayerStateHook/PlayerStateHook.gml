function PlayerStateHook(){
	hSpeed = 0
	vSpeed = 0
	
	if(sprite_index != global.spriteHook[global.level]){
		hook = 0
		hookX = 0
		hookStatus = HOOKSTATUS.EXTENDING
		hookEntity = noone
		
		sprite_index = global.spriteHook[global.level]
		image_index = CARDINAL_DIR
		image_speed = 0
	}
	
	var _speedHookTemp = speedHook
	if(hookStatus != HOOKSTATUS.EXTENDING) _speedHookTemp *= -1
	hook += _speedHookTemp
	switch(image_index){
		case 0: hookX = hook; break
		case 1: hookY = -hook; break
		case 2: hookX = -hook; break
		case 3: hookY = hook; break
	}
	
	switch(hookStatus){
		case HOOKSTATUS.EXTENDING:{
			if(hook >= distanceHook) hookStatus = HOOKSTATUS.MISSED
			
			var _hookHit = collision_circle(x+hookX,y+hookY,4,pEntity,false,true)
			if(_hookHit != noone) && (global.iLifted != _hookHit){
				switch(_hookHit.entityHookable){
					default:{
						if(object_is_ancestor(_hookHit.object_index,pEnemy)){
							HurtEnemy(_hookHit,global.hookDamage[global.level],id,global.hookDistanceThrow[global.level])
							hookStatus = HOOKSTATUS.MISSED
						}
						else{
							if(_hookHit.entityHitScript != -1){
								with(_hookHit) script_execute(entityHitScript)
								hookStatus = HOOKSTATUS.MISSED
							}
						}
					}break;
					case 1:{
						hookStatus = HOOKSTATUS.PULLTOPLAYER
						hookEntity = _hookHit
					}break;
					case 2:{
						hookStatus = HOOKSTATUS.PULLTOENTITY
						hookEntity = _hookHit
					}break;
				}
			}
		}break;
		
		case HOOKSTATUS.PULLTOPLAYER:{
			with(hookEntity){
				x = other.x+other.hookX
				y = other.y+other.hookY
			}
		}break;
		
		case HOOKSTATUS.PULLTOENTITY:{
			switch(image_index){
				case 0: x += speedHook; break;
				case 1: y -= speedHook; break;
				case 2: x -= speedHook; break;
				case 3: y += speedHook; break;
			}
		}break;
	}
	
	if(hook <= 0){
		hookEntity = noone
		state = PlayerStateFree
	}
}