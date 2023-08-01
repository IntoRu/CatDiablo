// активация квеста синего слизня

function ActivateDeadVillage(){
	var _allEnemyDead = global.count == 10
	if global.local == "RU"{
	switch(global.questStatus[? "TheDeadVillage"]){
		
		case 0: { // квест ещё не начат
			if(_allEnemyDead){ // если мы всех ёбнули
				// мы завершаем квест
				NewTextBox("Ахуеть, ты зделал это",2)
				NewTextBox("Ты убил их всех!!!",2)
				global.questStatus[? "TheDeadVillage"] = 2 // завершаем квест
				global.playerMoney += 100
				// повышаем уровень
				//if(global.level != 3) global.level++
				NewTextBox("В центре деревни есть отличный магаз!\nА на севере деревни живёт Котэ!!!",2)
				NewTextBox("У неё всегда найдётся работёнка для таких как ты!!!",2)
				audio_play_sound(sndEndMission,5,false)
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
				global.playerMoney += 100
				NewTextBox("В центре деревни есть отличный магаз!\nА на севере деревни живёт Котэ!!!",2)
				NewTextBox("У неё всегда найдётся работёнка для таких как ты!!!",2)
				audio_play_sound(sndEndMission,5,false)
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
	if global.local == "EN"{
	switch(global.questStatus[? "TheDeadVillage"]){
		
		case 0: { // квест ещё не начат
			if(_allEnemyDead){ // если мы всех ёбнули
				// мы завершаем квест
				NewTextBox("Wow you did it",2)
				NewTextBox("You killed them all!!!",2)
				global.questStatus[? "TheDeadVillage"] = 2 // завершаем квест
				audio_play_sound(sndEndMission,5,false)
				global.playerMoney += 100
				// повышаем уровень
				//if(global.level != 3) global.level++
				NewTextBox("There is a great shop in the center of the village!\nAnd in the north of the village lives Kote!!!",2)
				NewTextBox("She always has a job for people like you!!!",2)
			}
			else{
				// предлагаем квест
				NewTextBox("Hello. Welcome to the village!",2)
				NewTextBox("Cleanse her of all filth...\n and I'll help you get comfortable here",2,
				["5:Fine!","6:Maybe later...."])
				
			}
		}break
		
		case 1:{ // квест взят
			if(_allEnemyDead){
				// мы завершаем квест
				NewTextBox("Oooh... they're all dead",2)
				NewTextBox("Now you can breathe freely...",2)
				global.questStatus[? "TheDeadVillage"] = 2 // завершаем квест
				//if(global.level != 3) global.level++ // при желании можно добавить уровень и т д
				audio_play_sound(sndEndMission,5,false)
				global.playerMoney += 100
				NewTextBox("There is a great shop in the center of the village!\nAnd in the north of the village lives Kote!!!",2)
				NewTextBox("She always has a job for people like you!!!",2)
			}
			else{
				// мы напоминаем что надо сделать или даём подсказку
				NewTextBox("They roam all over the place",2)
				NewTextBox("Damned slugs and flying things!",2)						
			}
		}break
		
		case 2:{ // квест завершён
			// благодарим и т.д.
			NewTextBox("There is a great shop in the center of the village!\nAnd in the north of the village lives Kote!!!",2)
			NewTextBox("She always has a job for people like you!!!",2)
		}break	
	}
	}
}
