
function ActivateManualWeapon(){
	if global.local == "RU"{
	NewTextBox("Предметы не будут выпадать \nесли они не куплены...",2)
	NewTextBox("После покупки предметов они будут\nдоступны в выборе инвентаря...",2)
	NewTextBox("Q или E - сменить предмет...",2)
	NewTextBox("Ctrl - активировать выбранный предмет...",2)
	NewTextBox("Space - бросить бомбу...",2)	
	}
	//------------------------------------------
	if global.local == "EN"{
	NewTextBox("Items will not drop \nif they are not purchased...",2)
	NewTextBox("After purchasing items, they will be\navailable in stock selection...",2)
	NewTextBox("Q or E - change item...",2)
	NewTextBox("Ctrl - activate selected item...",2)
	NewTextBox("Space - drop the bomb...",2)
	}
}