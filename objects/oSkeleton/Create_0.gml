// Inherit the parent event
event_inherited();

soundAttack = sndSkeletonAttack

soundStepHit = true

state = ENEMYSTATE.WANDER

sprMove = sSkeleton
sprAttack = sSkeletonAttack
sprHurt = sSkeletonHurt

enemyScript[ENEMYSTATE.WANDER] = SlimeWander
enemyScript[ENEMYSTATE.CHASE] = SlimeChese
enemyScript[ENEMYSTATE.ATTACK] = SlimeAttack
enemyScript[ENEMYSTATE.HURT] = SlimeHurt
enemyScript[ENEMYSTATE.DIE] = SlimeDie


entityDropList = choose(
	[oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin],
	[oHillDrop],
	[oBombDrop],
	[oArrowDrop]
)

