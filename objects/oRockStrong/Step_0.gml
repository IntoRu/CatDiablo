///@desc камень который можно поднять только сильным
if global.iLifted entityCollision = false
else entityCollision = true

if !global.strong{
	entityActivateScript = NewTextBox
	entityActiveteArgs = ["Силёнок маловато....",0]
}
else {
	entityActivateScript = ActivateLiftable
	entityActiveteArgs = [id]
}