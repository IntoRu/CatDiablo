// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerDropItem(){
	with(oPlayer){
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
}