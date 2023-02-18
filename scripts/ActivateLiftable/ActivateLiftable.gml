
///@arg id
function ActivateLiftable(){
	if(global.iLifted == noone){
		PlayerActOutAnimation(global.spriteLift[global.level])
		
		global.spriteIdle[global.level] = global.spriteCarry[global.level]
		global.spriteRun[global.level] = global.spriteRunCarry[global.level]
		
		global.iLifted = argument0
		with(global.iLifted){
			lifted = true
			persistent = true
		}
	}
	else{
		
	}
}

