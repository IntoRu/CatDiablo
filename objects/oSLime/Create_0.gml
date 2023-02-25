// Inherit the parent event
event_inherited();

soundStepHit = true

state = ENEMYSTATE.WANDER

sprMove = sSlime
sprAttack = sSlimeAttack
sprDie = sSlimeDie
sprHurt = sSlimeHurt

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
	[oCoin,oCoin,oCoin,oHillDrop]
)

