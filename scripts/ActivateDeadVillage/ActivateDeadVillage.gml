// активация квеста синего слизня

function ActivateDeadVillage(){
	var _allEnemyDead = global.count == 10
	switch(global.questStatus[? "TheDeadVillage"]){
		
		case 0: { // квест ещё не начат
			if(_allEnemyDead){ // если мы всех ёбнули
				// мы завершаем квест
				NewTextBox("Ахуеть, ты зделал это",2)
				NewTextBox("Ты убил их всех!!!",2)
				global.questStatus[? "TheDeadVillage"] = 2 // завершаем квест
				audio_play_sound(sndQuestHatComplited,5,false)
				global.playerMoney += 100
				// повышаем уровень
				//if(global.level != 3) global.level++
				NewTextBox("В центре деревни есть отличный магаз!\nА на севере деревни живёт Котэ!!!",2)
				NewTextBox("У неё всегда найдётся работёнка для таких как ты!!!",2)
			}
			else{
				// предлагаем квест
				NewTextBox("Привет. Добро пожаловать в деревню!",2)
				NewTextBox("Очисти её от всякой мерзости...\n а я помогу тебе здесь освоится",2,
				["5:Хорошо!","6:Как нибудь в другой раз...."])
				
			}
		}break
		
		case 1:{ // квест взят
			if(_allEnemyDead){
				// мы завершаем квест
				NewTextBox("Оооо... Они все мертвы",2)
				NewTextBox("Теперь можно вздохнуть свободно...",2)
				global.questStatus[? "TheDeadVillage"] = 2 // завершаем квест
				//if(global.level != 3) global.level++ // при желании можно добавить уровень и т д
				audio_play_sound(sndQuestHatComplited,5,false)
				global.playerMoney += 100
				NewTextBox("В центре деревни есть отличный магаз!\nА на севере деревни живёт Котэ!!!",2)
				NewTextBox("У неё всегда найдётся работёнка для таких как ты!!!",2)
			}
			else{
				// мы напоминаем что надо сделать или даём подсказку
				NewTextBox("Они бродят тут по всюду",2)
				NewTextBox("Проклятые слизни и летучие твари!",2)						
			}
		}break
		
		case 2:{ // квест завершён
			// благодарим и т.д.
			NewTextBox("В центре деревни есть отличный магаз!\nА на севере деревни живёт Котэ!!!",2)
			NewTextBox("У неё всегда найдётся работёнка для таких как ты!!!",2)
		}break	
	}
}
