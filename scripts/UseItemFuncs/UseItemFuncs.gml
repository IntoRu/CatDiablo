

	
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
