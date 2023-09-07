///@desc чит код на деньги

chitCode -=1
if keyboard_check(ord("M")) and keyboard_check(ord("O")) and keyboard_check(ord("N")) and chitCode < 0
{
	global.playerMoney += 5000
	chitCode = 20	
}

//для магического прогресс бара (востановление магии)
if global.playerHasAnyItemsMagic and global.playerEquippedMagic != ITEM.NONE
{
	if global.currentAmount < global.maxAmount  global.currentAmount += global.mannaSpeed
}




