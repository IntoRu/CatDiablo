// Inherit the parent event
event_inherited();

if global.strong = true {
	entityActivateScript = ActivateLiftable
	entityActiveteArgs = [id]
} 
else{
	entityActivateScript = NewTextBox
	entityActiveteArgs = ["Силёнок маловато",2]
}


