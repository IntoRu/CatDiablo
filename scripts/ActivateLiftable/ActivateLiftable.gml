
///@arg id
function ActivateLiftable(){
	if(global.iLifted == noone){
		PlayerActOutAnimation(spriteLift[level])
		global.iLifted = argument0
		with(global.iLifted){
			lifted = true
			persistent = true
		}
	}
}