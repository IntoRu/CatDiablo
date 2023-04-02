
function PlayerStateFree(){

	hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection)
	vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection)
	
	// коллизия
	PlayerCollision()
	
	// аттака
	if (keyAttack) and (global.iLifted == noone) and global.swordEquipped != SWORD.NONE{
		state = PlayerStateAttack
		stateAttack = AttackSlash
	}

	// анимация
	var _oldSprite = sprite_index
	if (inputMagnitude != 0){
		direction = inputDirection
		sprite_index = global.spriteRun[global.level]
	}
	else sprite_index = global.spriteIdle[global.level]

	if(_oldSprite != sprite_index) localFrame = 0

	PlayerAnimateSprite()
	
	//проверка не активируется ли сущьность
	var _activateX = x+lengthdir_x(8,direction)
	var _activateY = y+lengthdir_y(8,direction)
	//activate = instance_position(x+_activateX,y-8+_activateY,pEntity)// найденная сущьность	
	
	//----------------------------------------------------------------------------
	var _activateSize = 4
	var _activateList = ds_list_create()
	activate = noone
	var _entityFound = collision_rectangle_list(
		_activateX - _activateSize,
		_activateY - _activateSize,
		_activateX + _activateSize,
		_activateY + _activateSize,
		pEntity,
		false,
		true,
		_activateList,
		true
	)
	while(_entityFound > 0){
		var _check = _activateList[| --_entityFound]
		if(_check != global.iLifted) and (_check.entityActivateScript != -1){
			activate = _check
			break
		}
	}
	
	
	ds_list_destroy(_activateList)
	//----------------------------------------------------------------------------
		
	if(keyActivate){
		// 1. проверка не активируется ли сущьность
		//var _activateX = lengthdir_x(8,direction)
		//var _activateY = lengthdir_y(8,direction)
		//activate = instance_position(x+_activateX,y-8+_activateY,pEntity)// найденная сущьность
		
		// 2. если там ничего нет либо есть без сценария активации - перекат
		if(activate == noone){
			
			if(global.iLifted != noone){ // если у нас есть в руках предмет
				PlayerThrown()
			}
			else{
				state = PlayerStateRoll
				moveDistanceRemaining = distanceRoll
			}	
		}
		
		// 3. а если что то есть то активируем сущность
		else{
			
			ScriptExecuteArray(activate.entityActivateScript,activate.entityActiveteArgs)
		
		// 4. если эта сущность нпс то поворачиваем его к нам
			if(activate.entityNPC){
				with(activate){
					direction = point_direction(x,y,other.x,other.y)
					image_index = CARDINAL_DIR
				}
			}
		}
		
		
		
	}
	if(activate == noone or activate.entityActivateScript == -1) readyMess = false
	else readyMess = true
	
	// используем предметы
	if(keyItem) and (!keyActivate) and (global.playerHasAnyItems) and (global.playerEquipped != ITEM.NONE) and (global.iLifted == noone){
		switch(global.playerEquipped){
			case ITEM.BOMB: UseItemBomb(); break;
			case ITEM.BOW: UseItemBow(); break;
			case ITEM.HOOK: UseItemHook(); break;
			case ITEM.HILL: UseItemHill(); break;
			// использование щита прописано в oPlayer Step
			default: break
		}
	}
	
	// урон от разных мечей
	if(global.swordEquipped != SWORD.NONE){
		switch (global.swordEquipped){
			case SWORD.SIMPLESWORD: global.slashDamage[global.level] = 5; break
			case SWORD.GOODSWORD: global.slashDamage[global.level] = 20; break
			default: break
		}
		
	}
	
	// урон от разных видов лука
	if global.newBowEquipped != BOW.NONE{
		switch global.newBowEquipped{
			case BOW.SIMPLEBOW: global.bowDamage[global.level] = 20; break
			case BOW.GOODBOW: global.bowDamage[global.level] = 40; break
			default: break
			
		}
	}
	
	

	// преключение предметов
	if(global.playerHasAnyItems){
		var _cycleDirection = keyItemSelectUp - keyItemSelectDown
		if(_cycleDirection != 0){
			do{
				global.playerEquipped += _cycleDirection
				if(global.playerEquipped < 1) global.playerEquipped = ITEM.TYPE_COUNT-1
				if(global.playerEquipped >= ITEM.TYPE_COUNT) global.playerEquipped = 1
			}
			until (global.playerItemUnlocked[global.playerEquipped])
		}
	}
}