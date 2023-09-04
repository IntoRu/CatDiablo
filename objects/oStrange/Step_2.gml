// Inherit the parent event
event_inherited();

// переключаем диалоговые ветки
if global.questStatus[? "HouseSearch"] == 0 entityActivateScript = ActivateDeadSkeleton
else entityActivateScript = ActivateHouseSearch

