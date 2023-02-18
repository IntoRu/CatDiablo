
function PlayerStateRoll(){
	// движение
	hSpeed = lengthdir_x(speedRoll, direction)
	vSpeed = lengthdir_y(speedRoll,direction)
	
	moveDistanceRemaining = max(0,moveDistanceRemaining - speedRoll)
	var _collided = PlayerCollision()
	
	sprite_index = spriteRoll[level]
	var _totalFrames = sprite_get_number(sprite_index)/4
	image_index = (CARDINAL_DIR * _totalFrames) + min(((1 - (moveDistanceRemaining / distanceRoll))*_totalFrames), _totalFrames - 1)
	
	if(moveDistanceRemaining <= 0){
		state = PlayerStateFree	
	}
	
	// тряска и откат при солкновении со стеной
	if(_collided){
		state = PlayerStateBonk
		moveDistanceRemaining = distanceBonk
		ScreenShake(4,30)
	}
}