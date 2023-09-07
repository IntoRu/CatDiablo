

	
function UseItemBomb(){
	if(global.playerAmmo[ITEM.BOMB] > 0) and (global.iLifted == noone){
		global.playerAmmo[ITEM.BOMB]--
		var _bomb = instance_create_layer(x,y,"Instances",oBomb)
		ActivateLiftable(_bomb)
	}
}

function UseItemBow(){
	if(global.playerAmmo[ITEM.BOW] > 0) and (global.iLifted == noone) and global.newBowEquipped != BOW.NONE{
		global.playerAmmo[ITEM.BOW]--
		PlayerActOutAnimation(global.spriteBow[global.level],PlayerFireArrow)
	}
}

function UseItemHook(){
	state = PlayerStateHook
	localFrame = 0
}

function UseItemHill(){
	if(global.playerAmmo[ITEM.HILL] > 0) and (global.iLifted == noone) and global.playerHealth[global.level] != global.playerHealthMax[global.level]{
		if(global.playerHealth[global.level] <= global.playerHealthMax[global.level]-global.hillPlus){
			global.playerAmmo[ITEM.HILL]--
			global.playerHealth[global.level] += global.hillPlus
		}
		else{
			global.playerAmmo[ITEM.HILL]--
			global.playerHealth[global.level] = global.playerHealthMax[global.level]
		}
		audio_play_sound(sndHill,5,false)
	}
}




//---------------------------------------------------------------
function PlayerFireArrow(){
	with(instance_create_depth(floor(x),floor(y)-7,depth,oArrow)){
		direction = other.direction
		direction = CARDINAL_DIR * 90
		image_speed = 0
		image_index = CARDINAL_DIR
		speed = 6
	}
}

//-----------------------------------------------------------
// использование магических рун

// руна одиночного удара
function UseItemMagicFaerSingl()
{
	nearEnemy = instance_nearest(x,y,pEnemy) // находим ближайшего врага
	if global.currentAmount >= global.mannaMagicSingl and distance_to_object(nearEnemy) < global.disMagicSingl and global.iLifted == noone// проверка дистанции
	{
		// и если дистанция позволяет
		state = PlayerStateMagic // меняем спрайт
		global.currentAmount -= global.mannaMagicSingl // отнимаем манну
		HurtEnemy(nearEnemy,global.damagMagicSingl,other.id,global.disThrowSingl) // ебашим по противнику
		// эффект частиц
		instance_create_depth(nearEnemy.x,nearEnemy.y,-9999,oMagicEffectEnemy)
	}
}

// руна массового удара
function UseItemMagicFaerAll()
{
	if global.currentAmount >= global.mannaMagicAll and distance_to_object(pEnemy) < global.disMagicAll and global.iLifted == noone // проверка дистанции
	{
		state = PlayerStateMagic
		global.currentAmount -= global.mannaMagicAll  // отнимаем манну
		
		with pEnemy
		{
			if point_distance(x,y,other.x,other.y) < global.disMagicAll
			{
				HurtEnemy(id,global.damagMagicAll,other.id,global.disThrowAll) // ебашим по всем пративникам
				instance_create_depth(id.x,id.y,-9999,oMagicEffectEnemy)
			}
			
		}
	}
}

// руна полного исцеления
function UseItemMagicHill()
{
	if global.currentAmount >= global.mannaMagicHill and global.iLifted == noone and global.playerHealth[global.level] != global.playerHealthMax[global.level]
	{
		state = PlayerStateMagic
		global.currentAmount -= global.mannaMagicHill // отнимаем манну
		global.playerHealth[global.level] = global.playerHealthMax[global.level]
		instance_create_depth(x,y-10,-9999,oMagicEffectHill)
	}
}
//-----------------------------------------------
