
state = PlayerStateFree
stateAttack = AttackSlash
lastState = state

hitByAttack = -1 // список сущьностей по которым мы бьём мечом

image_speed = 0

hSpeed = 0
vSpeed = 0
speedWalk = 2
speedRoll = 3 //скорость переката
distanceRoll = 72 // расстояние переката
distanceBonk = 40 // расстояния отскока
distanceBonkHeight = 12 // высота отскока
speedBonk = 1.5 // скорость отскока
z = 0

invulnerable = 0 // для неуязвимости
flash = 0
flashShader = shRedFlash // шейдер при уроне

animationEndScript = -1 // для предметов

localFrame = 0

// ---------------------------------------------------

#region уровень персоонажа (сюда можем добавлять урон жизни и т д)

level = LEVEL0 // изначально 0 уровень

spriteIdle[LEVEL0] = sPlayer
spriteIdle[LEVEL1] = sPlayerL1
spriteIdle[LEVEL2] = sPlayerL2
spriteIdle[LEVEL3] = sPlayerL3

spriteRun[LEVEL0] = sPlayerRun
spriteRun[LEVEL1] = sPlayerRunL1
spriteRun[LEVEL2] = sPlayerRunL2
spriteRun[LEVEL3] = sPlayerRunL3

spriteRoll[LEVEL0] = sPlayerRoll
spriteRoll[LEVEL1] = sPlayerRollL1
spriteRoll[LEVEL2] = sPlayerRollL2
spriteRoll[LEVEL3] = sPlayerRollL3

spriteHurt[LEVEL0] = sPlayerHurt
spriteHurt[LEVEL1] = sPlayerHurtL1
spriteHurt[LEVEL2] = sPlayerHurtL2
spriteHurt[LEVEL3] = sPlayerHurtL3

spriteAttackSlash[LEVEL0] = sPlayerAttackSlash
spriteAttackSlash[LEVEL1] = sPlayerAttackSlashL1
spriteAttackSlash[LEVEL2] = sPlayerAttackSlashL2
spriteAttackSlash[LEVEL3] = sPlayerAttackSlashL3

spriteLift[LEVEL0] = sPlayerLift
spriteLift[LEVEL1] = sPlayerLiftL1
spriteLift[LEVEL2] = sPlayerLiftL2
spriteLift[LEVEL3] = sPlayerLiftL3

spriteDead[LEVEL0] = sPlayerDead
spriteDead[LEVEL1] = sPlayerDeadL1
spriteDead[LEVEL2] = sPlayerDeadL2
spriteDead[LEVEL3] = sPlayerDeadL3

spriteDie[LEVEL0] = sPlayerDie
spriteDie[LEVEL1] = sPlayerDieL1
spriteDie[LEVEL2] = sPlayerDieL2
spriteDie[LEVEL3] = sPlayerDieL3

//урон и отскок от удара
switch level{
	case LEVEL0: slashDamage = 5; slashRecoil = 10; break;
	case LEVEL1: slashDamage = 10; slashRecoil = 15; break;
	case LEVEL2: slashDamage = 15; slashRecoil = 20; break;
	case LEVEL3: slashDamage = 20; slashRecoil = 25; break;
	
}

//// здоровье
//switch level{
//	case LEVEL0: playerHealthMax = 3; playerHealth = playerHealthMax; break;
//	case LEVEL1: playerHealthMax = 4; playerHealth = playerHealthMax; break;
//	case LEVEL2: playerHealthMax = 5; playerHealth = playerHealthMax; break;
//	case LEVEL3: playerHealthMax = 6; playerHealth = playerHealthMax; break;
//}

// время неуязвимости при получении урона
switch level{
	case LEVEL0: invTime = 100; break;
	case LEVEL1: invTime = 140; break;
	case LEVEL2: invTime = 170; break;
	case LEVEL3: invTime = 200; break;
}

#endregion

//коллизия на основе плитки
collisionMap = layer_tilemap_get_id(layer_get_id("Col"))

//--------------------------
readyMess = false // готовность что то активировать

// обновляем позицию игрока при переходач из комнаты в комнату
if(global.targetX != -1){
	x = global.targetX
	y = global.targetY
	direction = global.targetDirection
}




