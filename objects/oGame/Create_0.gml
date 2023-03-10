
randomize()


global.damage = true // это для щита

global.itemMessage = true // для оповещения что это за предмет в квестах

// для сохранения
global.gameSaveSlot = 0



//---------------------------------
//удаляем унистоженные обьекты
//(они теперь не спавнятся после перехода в комнаты)
//global.testDeath = ds_list_create()
global.deathCount = 0 // без этой хуйни невозможно сохранить
global.entityDeath = []
//---------------------------------

global.playerMoney = 0

//--------------------------------------------
// предметы
global.playerHasAnyItems = false
global.playerEquipped = ITEM.BOMB // первый предмет который у нас появляется(по умолчанию)
global.playerAmmo = array_create(ITEM.TYPE_COUNT,-1)
global.playerItemUnlocked = array_create(ITEM.TYPE_COUNT,false)
global.playerAmmo[ITEM.BOMB] = 0
global.playerAmmo[ITEM.BOW] = 0
global.playerAmmo[ITEM.HILL] = 0
global.playerAmmo[ITEM.SHIT] = 0

//global.playerItemUnlocked[ITEM.SHIT] = true
//global.playerItemUnlocked[ITEM.BOMB] = true
//global.playerItemUnlocked[ITEM.BOW] = true
//global.playerItemUnlocked[ITEM.HOOK] = true
//global.playerItemUnlocked[ITEM.HILL] = true
//global.playerHasAnyItems = true
//global.playerAmmo[ITEM.SHIT] = 10

// аптечка
global.hillPlus = 0.5

//--------------КВЕСТЫ----------------
#region квест пропавшего друга
// Найти пропавшего друга коту
// для квеста пропавшего дркга
global.questStatus = ds_map_create() // создаётся один раз для всех квестов
global.questStatus[? "TheMissingFriend"] = 0 // квест не начат(1- начат 2 завершён)
#endregion 


#region квест синего слизня
// убить всех врагов в родной деревне
global.count = 0 // сколько врагов убито
global.questStatus[? "TheDeadVillage"] = 0 // квест не начат(1- начат 2 завершён)
// не забываем прописать в загрузке и сохранении статус квестов
#endregion

#region квест брата
// будет базироватся на основе инфы после убийства монстра в пещере в лесу
global.informationAboutMonster = false
global.questStatus[? "TheBrotherDeadCat"] = 0
#endregion

// ------------------------------------------------------------
#region уровень персоонажа
global.level = LEVEL0

// здоровье
global.playerHealth[LEVEL0] = 1
global.playerHealth[LEVEL1] = 2
global.playerHealth[LEVEL2] = 3
global.playerHealth[LEVEL3] = 4
global.playerHealthMax[LEVEL0] = global.playerHealth[LEVEL0]
global.playerHealthMax[LEVEL1] = global.playerHealth[LEVEL1]
global.playerHealthMax[LEVEL2] = global.playerHealth[LEVEL2]
global.playerHealthMax[LEVEL3] = global.playerHealth[LEVEL3]
													 
// урон мечь
global.slashDamage[LEVEL0] = 5
global.slashDamage[LEVEL1] = 10
global.slashDamage[LEVEL2] = 15
global.slashDamage[LEVEL3] = 20
// урон бомба
global.bombDamge[LEVEL0] = 25
global.bombDamge[LEVEL1] = 35
global.bombDamge[LEVEL2] = 45
global.bombDamge[LEVEL3] = 50
// урон лук
global.bowDamage[LEVEL0] = 10
global.bowDamage[LEVEL1] = 20
global.bowDamage[LEVEL2] = 30
global.bowDamage[LEVEL3] = 40
// урон горшок
global.potDamage[LEVEL0] = 0.4
global.potDamage[LEVEL1] = 0.8
global.potDamage[LEVEL2] = 1.2
global.potDamage[LEVEL3] = 1.6
// урон камень
global.rockDamage[LEVEL0] = 0.6
global.rockDamage[LEVEL1] = 1.2
global.rockDamage[LEVEL2] = 1.8
global.rockDamage[LEVEL3] = 2.2
// урон крюк
global.hookDamage[LEVEL0] = 0
global.hookDamage[LEVEL1] = 0
global.hookDamage[LEVEL2] = 0
global.hookDamage[LEVEL3] = 0
// урон щит
global.shitDamage[LEVEL0] = 5
global.shitDamage[LEVEL1] = 10
global.shitDamage[LEVEL2] = 15
global.shitDamage[LEVEL3] = 20

// отброс врага мечь
global.slashRecoil[LEVEL0] = 10
global.slashRecoil[LEVEL1] = 15
global.slashRecoil[LEVEL2] = 20
global.slashRecoil[LEVEL3] = 25
// отброс врага бомба
global.bombDistanceThrow[LEVEL0] = 30
global.bombDistanceThrow[LEVEL1] = 35
global.bombDistanceThrow[LEVEL2] = 40
global.bombDistanceThrow[LEVEL3] = 45
// отброс врага лук
global.bowDistanceThrow[LEVEL0] = 20
global.bowDistanceThrow[LEVEL1] = 25
global.bowDistanceThrow[LEVEL2] = 30
global.bowDistanceThrow[LEVEL3] = 35
// отброс врага горшок
global.potDistanceThrow[LEVEL0] = 25
global.potDistanceThrow[LEVEL1] = 30
global.potDistanceThrow[LEVEL2] = 35
global.potDistanceThrow[LEVEL3] = 40
// отброс врага камень
global.rockDistanceThrow[LEVEL0] = 30
global.rockDistanceThrow[LEVEL1] = 35
global.rockDistanceThrow[LEVEL2] = 40
global.rockDistanceThrow[LEVEL3] = 45
// отброс врага крюк
global.hookDistanceThrow[LEVEL0] = 15
global.hookDistanceThrow[LEVEL1] = 20
global.hookDistanceThrow[LEVEL2] = 25
global.hookDistanceThrow[LEVEL3] = 30
// отброс врага щит
global.shitDistanceThrow[LEVEL0] = 20
global.shitDistanceThrow[LEVEL1] = 30
global.shitDistanceThrow[LEVEL2] = 40
global.shitDistanceThrow[LEVEL3] = 50

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

global.spriteRollDamage[LEVEL0] = sPlayerRollDamage
global.spriteRollDamage[LEVEL1] = sPlayerRollDamageL1
global.spriteRollDamage[LEVEL2] = sPlayerRollDamageL2
global.spriteRollDamage[LEVEL3] = sPlayerRollDamageL3

global.spriteHurt[LEVEL0] = sPlayerHurt
global.spriteHurt[LEVEL1] = sPlayerHurtL1
global.spriteHurt[LEVEL2] = sPlayerHurtL2
global.spriteHurt[LEVEL3] = sPlayerHurtL3

global.spriteAttackSlash[LEVEL0] = sPlayerAttackSlashNew
global.spriteAttackSlash[LEVEL1] = sPlayerAttackSlashNewL1
global.spriteAttackSlash[LEVEL2] = sPlayerAttackSlashNewL2
global.spriteAttackSlash[LEVEL3] = sPlayerAttackSlashNewL3

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

global.spriteBow[LEVEL0] = sPlayerBow
global.spriteBow[LEVEL1] = sPlayerBowL1
global.spriteBow[LEVEL2] = sPlayerBowL2
global.spriteBow[LEVEL3] = sPlayerBowL3

global.spriteHook[LEVEL0] = sPlayerHook
global.spriteHook[LEVEL1] = sPlayerHookL1
global.spriteHook[LEVEL2] = sPlayerHookL2
global.spriteHook[LEVEL3] = sPlayerHookL3

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






