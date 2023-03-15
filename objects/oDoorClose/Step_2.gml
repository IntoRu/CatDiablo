// Inherit the parent event
event_inherited();

// что бы диалог не активировался во время боя и не мешал
if global.fight == false{
	entityActivateScript = NewTextBox
	entityActiveteArgs = ["Закрытая дверь....",0]
}
else entityActivateScript = -1