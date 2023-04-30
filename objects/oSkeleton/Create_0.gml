// Inherit the parent event
event_inherited();

soundAttack = sndSkeletonAttack

soundStepHit = true

state = ENEMYSTATE.WANDER

sprMove = sSkeleton
sprAttack = sSkeletonAttack
//sprDie = sSlimeDie
sprHurt = sSkeletonHurt

enemyScript[ENEMYSTATE.WANDER] = SlimeWander
enemyScript[ENEMYSTATE.CHASE] = SlimeChese
enemyScript[ENEMYSTATE.ATTACK] = SlimeAttack
enemyScript[ENEMYSTATE.HURT] = SlimeHurt
enemyScript[ENEMYSTATE.DIE] = SlimeDie


entityDropList = choose(
	[oCoin,oCoin,oCoin],
	[oCoin,oCoin,oCoin],
	[oCoin,oCoin,oCoin],
	[oCoin,oCoin,oCoin],
	[oCoin,oCoin,oCoin],
	[oCoin,oCoin,oCoin],
	[oCoin,oCoin,oCoin],
	[oCoin,oCoin,oCoin],
	[oCoin,oCoin,oCoin],
	[oCoin,oCoin,oCoin,oHillDrop],
	-1,
	-1,
	-1
)

