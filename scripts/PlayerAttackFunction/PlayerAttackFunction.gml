
function AttackSlash(){
	if(sprite_index != spriteAttackSlash[level]){
		// анимация аттаки
		sprite_index = spriteAttackSlash[level]
		localFrame = 0
		image_index = 0
		
		// список попаданий
		if(!ds_exists(hitByAttack,ds_type_list)) hitByAttack = ds_list_create()
		ds_list_clear(hitByAttack)
		
		
	}
	
	CalcAttack(sPlayerAttackSlashHB)
	
	PlayerAnimateSprite()
		
	if(animationEnd){
		state = PlayerStateFree
		animationEnd = false
	}
}

function AttackSpin(){

}

// функция обнаружения попаданий
function CalcAttack(){
	mask_index = argument0 // меняем маску столкновения
	var hitByAttackNow = ds_list_create()
	var hits = instance_place_list(x,y,pEntity,hitByAttackNow,true) // заносим жертв аттак в список
	if(hits > 0){
		for(var i=0;i<hits;i++){
			var hitID = hitByAttackNow[| i]
			if(ds_list_find_index(hitByAttack,hitID) == -1){
				ds_list_add(hitByAttack,hitID)
				with(hitID){
					// действия при попадании по сущьности
					if(object_is_ancestor(object_index,pEnemy)){
						// ЛОГИКА УРОНА И ОТБРОСА ВРАГА
						HurtEnemy(id,other.slashDamage,other.id,other.slashRecoil)
					}
					else if(entityHitScript != -1) script_execute(entityHitScript)
				}
			}
		}
	}
	
	ds_list_destroy(hitByAttackNow)
	
	mask_index = sPlayer // возвращаем обратно маску столкновения
}

function HurtEnemy(_enemy,_damage,_source,_knockback){
	with(_enemy){
		if(state != ENEMYSTATE.DIE){
			enemyHP -= _damage
			flash = 1
			
			if(enemyHP <= 0){
				state = ENEMYSTATE.DIE
			}
			else{
				if(state != ENEMYSTATE.HURT) statePrevious = state
				state = ENEMYSTATE.HURT
			}
			image_index = 0
			if(_knockback != 0){
				var _knockDirection = point_direction(x,y,(_source).x,(_source).y)
				xTo = x - lengthdir_x(_knockback,_knockDirection)
				yTo = y - lengthdir_y(_knockback,_knockDirection)
			}
		}
	}
}