///@desc камень который можно поднять только сильным
if global.iLifted entityCollision = false
else entityCollision = true

if !global.strong{
	entityActivateScript = NewTextBox
	if global.local == "RU" entityActiveteArgs = ["Силёнок маловато....",0]
	if global.local == "EN" entityActiveteArgs = ["Strength is not enough....",0]
}
else {
	entityActivateScript = ActivateLiftable
	entityActiveteArgs = [id]
}