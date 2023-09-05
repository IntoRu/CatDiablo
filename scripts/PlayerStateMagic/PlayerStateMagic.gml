
function PlayerStateMagic(){
	hSpeed = 0
	vSpeed = 0
	
	if(sprite_index != global.spriteAttackSlash[global.level]){
		sprite_index = global.spriteAttackSlash[global.level]
		image_index = CARDINAL_DIR
		image_speed = 1
		audio_play_sound(sndHook,5,false)
	}
	PlayerAnimateSprite()
		
	if(animationEnd){
		state = PlayerStateFree
		animationEnd = false
	}
}