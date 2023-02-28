
// движение и коллизия
left = keyboard_check(vk_left) or keyboard_check(ord("A"))
right = keyboard_check(vk_right) or keyboard_check(ord("D"))
up = keyboard_check(vk_up) or keyboard_check(ord("W"))
down = keyboard_check(vk_down) or keyboard_check(ord("S"))


keyActivate = keyboard_check_pressed(vk_space)
keyAttack = keyboard_check_pressed(vk_shift)
keyItem = keyboard_check_pressed(vk_control)

keyItemSelectUp = keyboard_check_pressed(ord("E"))
keyItemSelectDown = keyboard_check_pressed(ord("Q"))

inputDirection = point_direction(0,0,right-left,down-up)
inputMagnitude = (right-left != 0) or (down - up != 0)

if !global.gamePaused {
	script_execute(state)
	invulnerable = max(invulnerable - 1)
	flash = max(flash - 0.05,0)
}


depth = -bbox_bottom

//-----------------------------------------------------------
// ЗВУКИ
//звук шагов
if (left or right or up or down) and (soundStepFoot = true) and (!global.gamePaused){
	audio_play_sound(sndPlayerStep,0,false)
	soundStepFoot = false
	alarm[0] = 20
}

// звук меча
if(keyAttack) and (!global.gamePaused) and (global.iLifted == noone) and (soundStepBonk = true){
	audio_play_sound(sndPlayerSword,10,false)
	soundStepBonk = false
	alarm[1] = 40
}
// звук переката
if(state == PlayerStateRoll) and (keyActivate){
	 audio_play_sound(sndPlayerRoll,5,false)	
}
// звук зажигания бомбы и стрелы
if(keyItem){
	if instance_exists(oBomb){
		audio_play_sound(sndBombStartFaer,5,false)
	}
	if(sprite_index = global.spriteBow[global.level]){
		audio_play_sound(sndBow,5,false)
	}
}
// звук бонга
if state = PlayerStateBonk and soundStepBonk = true and !audio_is_playing(sndRollDamafe){
	audio_play_sound(sndPlayerBonk,5,false)
	soundStepBonk = false
	alarm[1] = 30
} 
// звук смерти
if sprite_index = global.spriteDie[global.level] and soundStepDead = true{
	audio_play_sound(sndPlayerDead,5,false)
	soundStepDead = false
}
else if sprite_index = global.spriteDead[global.level] soundStepDead = true



//-----------------------------------------
// ---------------- УРОН ПРИ ПЕРЕКАТЕ ------------
//if keyActivate and state == PlayerStateRoll and global.playerEquipped == ITEM.SHIT and global.playerAmmo[ITEM.SHIT] >= 0{
//	global.playerAmmo[ITEM.SHIT] -= 1
//}

if state == PlayerStateRoll and global.playerEquipped == ITEM.SHIT and global.playerAmmo[ITEM.SHIT] >0{

	AttackRoll()
	global.damage = false
	alarm[2] = 40

}



