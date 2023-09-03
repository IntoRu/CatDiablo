///@desc чит код на деньги

chitCode -=1
if keyboard_check(ord("M")) and keyboard_check(ord("O")) and keyboard_check(ord("N")) and chitCode < 0
{
	global.playerMoney += 100
	chitCode = 20
	
}



