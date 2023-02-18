
randomize()

global.level = LEVEL0
global.playerHealth[LEVEL0] = 3
global.playerHealth[LEVEL1] = 4
global.playerHealth[LEVEL2] = 5
global.playerHealth[LEVEL3] = 6
global.playerHealthMax[LEVEL0] = 3
global.playerHealthMax[LEVEL1] = 4
global.playerHealthMax[LEVEL2] = 5
global.playerHealthMax[LEVEL3] = 6

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




