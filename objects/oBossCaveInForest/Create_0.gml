// Inherit the parent event
event_inherited();
spawnTime = 300 //  с какой переодичностью спавнет слизней

maxHP = enemyHP

spawnEnemy = true

soundStepHit = true

state = ENEMYSTATE.WANDER

sprMove = sBossCaveInForest
sprAttack = sBossCaveInForest
sprDie = sBossCaveInForest
sprHurt = sBossCaveInForest_hurt

enemyScript[ENEMYSTATE.WANDER] = BatWander
enemyScript[ENEMYSTATE.CHASE] = BatChese
enemyScript[ENEMYSTATE.ATTACK] = -1
enemyScript[ENEMYSTATE.HURT] = SlimeHurt // общие сценарии как у слизи
enemyScript[ENEMYSTATE.DIE] = SlimeDie

entityDropList = choose(
	[oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin],
	[oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oArrowDrop,oArrowDrop,oArrowDrop,oArrowDrop,oArrowDrop,oArrowDrop],
	[oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oArrowDrop,oArrowDrop,oArrowDrop,oArrowDrop,oArrowDrop,oArrowDrop],
	[oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oBombDrop,oBombDrop,oBombDrop,oBombDrop,oBombDrop,oBombDrop,oBombDrop],
	[oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oBombDrop,oBombDrop,oBombDrop,oBombDrop,oBombDrop,oBombDrop,oBombDrop],
	[oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oHillDrop,oHillDrop],
	[oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oHillDrop,oHillDrop]
	//[oBombDrop,oBombDrop,oBombDrop],
	//[oHillDrop,oHillDrop],
	//[oArrowDrop,oArrowDrop,oArrowDrop]
)

