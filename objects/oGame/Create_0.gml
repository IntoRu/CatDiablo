
randomize()

//---------------------------------
//удаляем унистоженные обьекты
//(они теперь не спавнятся после перехода в комнаты)
global.testDeath = ds_list_create()


//-----------------------------------
#region
// для квеста шляпы
global.questStatus = ds_map_create()
global.questStatus[? "TheHatQuest"] = 0 // квест не начат(1- начат 2 завершён)
#endregion квест шляпы

// ------------------------------------------------------------
#region уровень персоонажа
global.level = LEVEL0

// здоровье
global.playerHealth[LEVEL0] = 1
global.playerHealth[LEVEL1] = 2
global.playerHealth[LEVEL2] = 3
global.playerHealth[LEVEL3] = 4
global.playerHealthMax[LEVEL0] = 1
global.playerHealthMax[LEVEL1] = 2
global.playerHealthMax[LEVEL2] = 3
global.playerHealthMax[LEVEL3] = 4

// урон
global.slashDamage[LEVEL0] = 5
global.slashDamage[LEVEL1] = 10
global.slashDamage[LEVEL2] = 15
global.slashDamage[LEVEL3] = 20

// отброс врага
global.slashRecoil[LEVEL0] = 10
global.slashRecoil[LEVEL1] = 15
global.slashRecoil[LEVEL2] = 20
global.slashRecoil[LEVEL3] = 25

// время неуязвимости при получении урона
global.invTime[LEVEL0] = 100
global.invTime[LEVEL1] = 140
global.invTime[LEVEL2] = 170
global.invTime[LEVEL3] = 200

// скины
global.spriteIdle[LEVEL0] = sPlayer
global.spriteIdle[LEVEL1] = sPlayerL1
global.spriteIdle[LEVEL2] = sPlayerL2
global.spriteIdle[LEVEL3] = sPlayerL3

global.spriteRun[LEVEL0] = sPlayerRun
global.spriteRun[LEVEL1] = sPlayerRunL1
global.spriteRun[LEVEL2] = sPlayerRunL2
global.spriteRun[LEVEL3] = sPlayerRunL3

global.spriteRoll[LEVEL0] = sPlayerRoll
global.spriteRoll[LEVEL1] = sPlayerRollL1
global.spriteRoll[LEVEL2] = sPlayerRollL2
global.spriteRoll[LEVEL3] = sPlayerRollL3

global.spriteHurt[LEVEL0] = sPlayerHurt
global.spriteHurt[LEVEL1] = sPlayerHurtL1
global.spriteHurt[LEVEL2] = sPlayerHurtL2
global.spriteHurt[LEVEL3] = sPlayerHurtL3

global.spriteAttackSlash[LEVEL0] = sPlayerAttackSlash
global.spriteAttackSlash[LEVEL1] = sPlayerAttackSlashL1
global.spriteAttackSlash[LEVEL2] = sPlayerAttackSlashL2
global.spriteAttackSlash[LEVEL3] = sPlayerAttackSlashL3

global.spriteLift[LEVEL0] = sPlayerLift
global.spriteLift[LEVEL1] = sPlayerLiftL1
global.spriteLift[LEVEL2] = sPlayerLiftL2
global.spriteLift[LEVEL3] = sPlayerLiftL3

global.spriteDead[LEVEL0] = sPlayerDead
global.spriteDead[LEVEL1] = sPlayerDeadL1
global.spriteDead[LEVEL2] = sPlayerDeadL2
global.spriteDead[LEVEL3] = sPlayerDeadL3

global.spriteDie[LEVEL0] = sPlayerDie
global.spriteDie[LEVEL1] = sPlayerDieL1
global.spriteDie[LEVEL2] = sPlayerDieL2
global.spriteDie[LEVEL3] = sPlayerDieL3

global.spriteCarry[LEVEL0] = sPlayerCarry
global.spriteCarry[LEVEL1] = sPlayerCarryL1
global.spriteCarry[LEVEL2] = sPlayerCarryL2
global.spriteCarry[LEVEL3] = sPlayerCarryL3

global.spriteRunCarry[LEVEL0] = sPlayerRunCarry
global.spriteRunCarry[LEVEL1] = sPlayerRunCarryL1
global.spriteRunCarry[LEVEL2] = sPlayerRunCarryL2
global.spriteRunCarry[LEVEL3] = sPlayerRunCarryL3

#endregion
//---------------------------------------------------

// для квестов


global.gamePaused = false

global.textSpeed = 0.35 // скорость текста в диалогах

// переходы между комнатами
global.targetRoom = -1
global.targetX = -1
global.targetY = -1
global.targetDirection = 0
global.iLifted = noone // нечего поднимать

global.iCamera = instance_create_layer(0,0,layer,oCamera)
global.iUI = instance_create_layer(0,0,layer,oUI)

surface_resize(application_surface,RESOLUTION_W,RESOLUTION_H)

room_goto(ROOM_START)






