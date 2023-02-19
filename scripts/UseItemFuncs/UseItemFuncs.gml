

	
function UseItemBomb(){
	if(global.playerAmmo[ITEM.BOMB] > 0) and (global.iLifted == noone){
		global.playerAmmo[ITEM.BOMB]--
		var _bomb = instance_create_layer(x,y,"Instances",oBomb)
		ActivateLiftable(_bomb)
	}
}

function UseItemBow(){

}

function UseItemHook(){

}

function UseItemHill(){
	if(global.playerAmmo[ITEM.HILL] > 0) and (global.iLifted == noone){
		if(global.playerHealth[global.level] <= global.playerHealthMax[global.level]-global.hillPlus){
			global.playerAmmo[ITEM.HILL]--
			global.playerHealth[global.level] += global.hillPlus
		}
	}
}
