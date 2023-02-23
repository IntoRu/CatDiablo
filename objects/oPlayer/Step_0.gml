
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



