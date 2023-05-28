// Inherit the parent event
event_inherited();

soundStepHit = true

state = ENEMYSTATE.WANDER

sprMove = sBat
sprAttack = sBat
//sprDie = sBatDie
sprHurt = sBatHurt

enemyScript[ENEMYSTATE.WANDER] = BatWander
enemyScript[ENEMYSTATE.CHASE] = BatChese
enemyScript[ENEMYSTATE.ATTACK] = -1
enemyScript[ENEMYSTATE.HURT] = SlimeHurt // общие сценарии как у слизи
enemyScript[ENEMYSTATE.DIE] = SlimeDie

entityDropList = choose(
	[oCoin,oCoin,oCoin],
	[oCoin,oCoin,oCoin],
	[oCoin,oCoin,oCoin],
	[oCoin,oCoin,oCoin],
	[oCoin,oCoin,oCoin],
	[oCoin,oCoin,oCoin],
	[oCoin,oCoin,oCoin],
	[oCoin,oCoin,oCoin,oArrowDrop],
	[oCoin,oCoin,oCoin,oArrowDrop],
	[oCoin,oCoin,oCoin,oHillDrop],
	-1,
	-1,
	-1
)

