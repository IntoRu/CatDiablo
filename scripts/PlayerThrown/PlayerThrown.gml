// ьросок предмета
function PlayerThrown(){
	with(global.iLifted){
		lifted = false
		persistent = false
		z = 13
		throwPeakHeight = z+10
		throwDistance = entityThrowDistance
		throwDistanceTravelled = 0
		throwStartPercent = (13/throwPeakHeight)*0.5
		throwPercent = throwStartPercent
		direction = other.direction
		x += lengthdir_x(5,direction)
		y += lengthdir_y(5,direction)
		xstart = x
		ystart = y
		thrown = true
	}
	PlayerActOutAnimation(global.spriteLift[global.level])
	
	global.iLifted = noone
	global.spriteIdle[LEVEL0] = sPlayer
	global.spriteIdle[LEVEL1] = sPlayerL1
	global.spriteIdle[LEVEL2] = sPlayerL2
	global.spriteIdle[LEVEL3] = sPlayerL3

	global.spriteRun[LEVEL0] = sPlayerRun
	global.spriteRun[LEVEL1] = sPlayerRunL1
	global.spriteRun[LEVEL2] = sPlayerRunL2
	global.spriteRun[LEVEL3] = sPlayerRunL3
	
}