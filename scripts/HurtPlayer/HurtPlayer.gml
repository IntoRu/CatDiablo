


function HurtPlayer(_direction,_force,_damage){ // направление, сила отброса и дамаг
	
	if(oPlayer.invulnerable <= 0){
		global.playerHealth[global.level] = max(0,global.playerHealth[global.level] - _damage)
		
		if(global.playerHealth[global.level] > 0){
			with(oPlayer){
				state = PlayerStateBonk
				direction = _direction - 180
				moveDistanceRemaining = _force
				ScreenShake(2,10)
				flash = 0.7
				invulnerable = global.invTime[global.level]
			}
		}
		else{
		 with(oPlayer) state = PlayerStateDead
		}
	}
	
}