
function ActivateManualWeapon(){
	if global.local == "RU"{
	NewTextBox("Предметы не будут выпадать \nесли они не куплены...",2)
	NewTextBox("После покупки предметов они будут\nдоступны в выборе инвентаря...",2)
	NewTextBox("Z - удар мечом...",2)
	NewTextBox("Shift - сменить предмет...",2)
	NewTextBox("Ctrl- сменить магическую руну...",2)
	NewTextBox("X - активировать выбранный предмет...",2)
	NewTextBox("C - активировать выбранную руну...",2)
	NewTextBox("Space - бросить бомбу...",2)	
	}
	//------------------------------------------
	if global.local == "EN"{
	NewTextBox("Items will not drop \nif they are not purchased...",2)
	NewTextBox("After purchasing items, they will be\navailable in stock selection...",2)
	NewTextBox("Z - sword strike...",2)
	NewTextBox("SHift - change item...",2)
	NewTextBox("Ctrl - change magic rune...",2)
	NewTextBox("X - activate selected item...",2)
	NewTextBox("C - activate the selected rune...",2)
	NewTextBox("Space - drop the bomb...",2)
	}
}