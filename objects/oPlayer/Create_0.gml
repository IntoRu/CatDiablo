
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




