#macro FRAME_RATE 60
#macro TILE_SIZE 16 // размер плитки коллизии
#macro CARDINAL_DIR round(direction/90)
#macro ROOM_START rTitle // начальная лока при загрузке игры
#macro ROOM_NEW_GAME rNewVillage // начальная лока при старте новой игры



#macro RESOLUTION_W 320
#macro RESOLUTION_H 180

//эффект перехода из комнаты в комнату
#macro TRANSITION_SPEED 0.02 // 0.02
#macro OUT 0
#macro IN 1

// состояние врага
enum ENEMYSTATE{
	IDLE,
	WANDER,
	CHASE,
	ATTACK,
	HURT,
	DIE,
	WAIT
}

enum ITEM{
	NONE,
	BOMB,
	BOW,
	HOOK,
	HILL,
	SHIT,
	TYPE_COUNT
}

enum HOOKSTATUS{
	EXTENDING,
	PULLTOPLAYER,
	PULLTOENTITY,
	MISSED
}

//  мечи
enum SWORD{
	NONE,
	SIMPLESWORD,
	GOODSWORD,
	TYPE_COUNT
}




