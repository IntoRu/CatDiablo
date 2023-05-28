// Inherit the parent event
event_inherited();

// для врагов с оружием (реализованно только у монстра)
spriteMask = sMonster
spriteMaskAttack = sMonsterAttackHB


soundAttack = sndSkeletonAttack

soundStepHit = true

state = ENEMYSTATE.WANDER

sprMove = sMonster
sprAttack = sMonsterAttack
sprHurt = sMonsterHurt

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

