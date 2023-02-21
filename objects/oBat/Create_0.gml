// Inherit the parent event
event_inherited();

state = ENEMYSTATE.WANDER

sprMove = sBat
sprAttack = sBat
sprDie = sBatDie
sprHurt = sBatHurt

enemyScript[ENEMYSTATE.WANDER] = BatWander
enemyScript[ENEMYSTATE.CHASE] = BatChese
enemyScript[ENEMYSTATE.ATTACK] = -1
enemyScript[ENEMYSTATE.HURT] = SlimeHurt // общие сценарии как у слизи
enemyScript[ENEMYSTATE.DIE] = SlimeDie

entityDropList = choose(
	[oCoin],
	[oBombDrop],
	[oHillDrop],
	[oArrowDrop],
	-1,
	-1,
	-1,
	-1
)

