
// движение и коллизия
left = keyboard_check(vk_left) or keyboard_check(ord("A"))
right = keyboard_check(vk_right) or keyboard_check(ord("D"))
up = keyboard_check(vk_up) or keyboard_check(ord("W"))
down = keyboard_check(vk_down) or keyboard_check(ord("S"))

keyActivate = keyboard_check_pressed(vk_space)
keyAttack = keyboard_check_pressed(ord("Z"))
keyItem = keyboard_check_pressed(ord("X"))

//keyItemSelectUp = keyboard_check_pressed(ord("2"))
keyItemSelectDown = keyboard_check_pressed(ord("1"))
keyItemSelectUp = keyboard_check_pressed(vk_shift)

// активация и выбор магических рун
keyItemMagic = keyboard_check_pressed(ord("C"))

//keyItemSelectUpMagic = keyboard_check_pressed(ord("4"))
keyItemSelectDownMagic = keyboard_check_pressed(ord("3"))
keyItemSelectUpMagic = keyboard_check_pressed(vk_control)

#region геймпад
if left or right or up or down {
	controller = 0
}

if (abs(gamepad_axis_value(0,gp_axislh)) > 0.2){
	left = abs(min(gamepad_axis_value(0,gp_axislh),0))
	right = max(gamepad_axis_value(0,gp_axislh),0)
	controller = 1
}
if (abs(gamepad_axis_value(0,gp_axislv)) > 0.2){
	up = abs(min(gamepad_axis_value(0,gp_axislv),0))
	down = max(gamepad_axis_value(0,gp_axislv),0)
	controller = 1
}

if gamepad_button_check_pressed(0,gp_shoulderrb){
	keyAttack = 1
	controller = 1
}
if gamepad_button_check_pressed(0,gp_shoulderlb){
	keyItem = 1
	controller = 1
}
if gamepad_button_check_pressed(0,gp_shoulderl){
	keyItemSelectDown = 1
	controller = 1
}
if gamepad_button_check_pressed(0,gp_shoulderr){
	keyItemSelectUp = 1
	controller = 1
}
if gamepad_button_check_pressed(0,gp_face1){
	keyActivate = 1
	controller = 1
}
#endregion

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
if(keyAttack) and (!global.gamePaused) and (global.iLifted == noone) and (soundStepBonk = true) and global.swordEquipped != SWORD.NONE{
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
	alarm[1] = 60
} 
// звук смерти
if sprite_index = global.spriteDie[global.level] and soundStepDead = true{
	audio_play_sound(sndHeroDead,5,false)
	soundStepDead = false
}
else if sprite_index = global.spriteDead[global.level] soundStepDead = true



//-----------------------------------------
// ---------------- УРОН ПРИ ПЕРЕКАТЕ ------------

if  state == PlayerStateRoll and global.playerEquipped == ITEM.SHIT and global.playerAmmo[ITEM.SHIT] >0{
	sprite_index = global.spriteRollDamage[global.level]
	AttackRoll()
	global.damage = false
	alarm[2] = 40
}

//---------------ПИШЕМ ЧЁ ЗА ПРЕДМЕТ------------------------

if distance_to_object(oHeadDeadCat) < 30 and global.itemMessage == true{
	if global.local == "RU" NewTextBox("Чья то голова",2)
	if global.local == "EN" NewTextBox("Whose head is",2)
	global.itemMessage = false
}

// пыль под ногами
dustInt = irandom_range(1,5) // рандомный интервал появления пыли
if sprite_index == global.spriteRun[global.level] and dustInt == 1 and !global.gamePaused instance_create_depth(x, bbox_bottom, -1, oDust)








