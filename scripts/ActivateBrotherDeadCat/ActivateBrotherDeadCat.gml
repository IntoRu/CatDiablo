// активация квеста про мёртвого брата

function ActivateBrotherDeadCat(){
	if global.questStatus[? "TheMissingFriend"] == 2{ 
		var _hasInformation = (global.informationAboutMonster == true)
		switch(global.questStatus[? "TheBrotherDeadCat"]){
		
			case 0: { // квест ещё не начат
				if(_hasInformation){ // если у нас есть инфа
					// мы завершаем квест
					NewTextBox("И так эта тварь мертва...",2)
					NewTextBox("Спасибо что отомстил за моего братишку",2)
					global.questStatus[? "TheBrotherDeadCat"] = 2 // завершаем квест
					audio_play_sound(sndQuestHatComplited,5,false)
					global.playerMoney += 500
					//// повышаем уровень
					if(global.level != 3) global.level++
				}
				else{
					// предлагаем квест
					NewTextBox("Ты принёс скверные вести в мой дом",2)
					NewTextBox("От моего брата осталась одна голова",2)
					NewTextBox("Выясни все обстоятельства случившегося\n и я бы отплачу тебе с полна",2,
					["7:Конечно!","3:Возможно позже...."])
				
				}
			}break
		
			case 1:{ // квест взят
				if(_hasInformation){
					// мы завершаем квест
					NewTextBox("И так эта тварь мертва...",2)
					NewTextBox("Спасибо что отомстил за моего братишку",2)
					global.questStatus[? "TheBrotherDeadCat"] = 2 // завершаем квест		
					global.playerMoney += 500
				
					// повышаем уровень
					if(global.level != 3) global.level++
					audio_play_sound(sndQuestHatComplited,5,false)
				}
				else{
					// мы напоминаем что надо сделать или даём подсказку
					NewTextBox("Иди и убей эту сволочь",2)					
				}
			}break
		
			case 2:{ // квест завершён
				// благодарим и т.д.
				NewTextBox("Рад что ты убил эту тварь",2)
				NewTextBox("Надеюсь, тот кто вызвал её в наш мир\nсгорит в аду ...",2)
			}break
		
			//case -1:{
			//	NewTextBox("Сьебался нахуй от сюда!!!!!!",2)
			//}
		
		}
	}
	else NewTextBox("И куда запропастился мой братец....",2)
}
