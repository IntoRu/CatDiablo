flash = max(0,flash-0.05)
fric = 0.05
if(z == 0) fric = 0.1

// эффект притягивания монет к игроку
if(instance_exists(oPlayer)){
	var _px = oPlayer.x
	var _py = oPlayer.y
	var _dist = point_distance(x,y,_px,_py)
	if(_dist < 16){
		spd += 0.25
		direction = point_direction(x,y,_px,_py)
		spd = min(spd,3)
		fric = 0
		if(_dist < 5){
			global.key = true
			instance_destroy()
			audio_play_sound(sndCoinPick,0,false)
		}
	}
}

// отскок предметов
if(bounceCount != 0){
		bounce += (pi * bounceSpeed)
		if(bounce > pi){
			bounce -= pi
			bounceHeight *= 0.6// каждый отскок всё меньше и меньше
			bounceCount--
		}
		z = sin(bounce) * bounceHeight
	}
	else z = 0

x += lengthdir_x(spd,direction)*random_range(0.1,0.4)
y += lengthdir_y(spd,direction)*random_range(0.1,0.4)
spd = max(spd-fric,0)
depth = -bbox_bottom