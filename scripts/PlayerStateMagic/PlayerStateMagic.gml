
function PlayerStateMagic(){
	hSpeed = 0
	vSpeed = 0
	
	if(sprite_index != global.spriteHook[global.level]){
		sprite_index = global.spriteHook[global.level]
		image_index = CARDINAL_DIR	
		image_speed = 1
		audio_play_sound(sndMagicAttack,5,false)
	}
	PlayerAnimateSprite()
		
	if(animationEnd){
		state = PlayerStateFree
		animationEnd = false
	}
}