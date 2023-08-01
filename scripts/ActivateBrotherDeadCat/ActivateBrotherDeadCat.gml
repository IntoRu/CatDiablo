// активация квеста про мёртвого брата

function ActivateBrotherDeadCat(){
	if global.local == "RU"{
	//var _hasInformation = (global.informationAboutMonster == true)
	if global.questStatus[? "TheMissingFriend"] == 2{ 
		var _hasInformation = (global.informationAboutMonster == true)
		switch(global.questStatus[? "TheBrotherDeadCat"]){
		
			case 0: { // квест ещё не начат
				if(_hasInformation){ // если у нас есть инфа
					// мы завершаем квест
					NewTextBox("И так эта тварь мертва...",2)
					NewTextBox("Спасибо что отомстил за моего братишку",2)
					global.questStatus[? "TheBrotherDeadCat"] = 2 // завершаем квест
					audio_play_sound(sndEndMission,5,false)
					global.playerMoney += 500
					//// повышаем уровень
					//if(global.level != 3) global.level++
					//global.strong = true // даём силу
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
					//if(global.level != 3) global.level++
					//global.strong = true // даём силу
					audio_play_sound(sndEndMission,5,false)
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
	//-----------------------------------------------------------------
	if global.local == "EN"{
	if global.questStatus[? "TheMissingFriend"] == 2{ 
		var _hasInformation = (global.informationAboutMonster == true)
		switch(global.questStatus[? "TheBrotherDeadCat"]){
		
			case 0: { // квест ещё не начат
				if(_hasInformation){ // если у нас есть инфа
					// мы завершаем квест
					NewTextBox("And so this creature is dead...",2)
					NewTextBox("Thank you for avenging my brother",2)
					global.questStatus[? "TheBrotherDeadCat"] = 2 // завершаем квест
					audio_play_sound(sndEndMission,5,false)
					global.playerMoney += 500
					//// повышаем уровень
					//if(global.level != 3) global.level++
					//global.strong = true // даём силу
				}
				else{
					// предлагаем квест
					NewTextBox("You brought bad news to my house",2)
					NewTextBox("Only one head left of my brother",2)
					NewTextBox("Find out all the circumstances of the incident\n and I would repay you in full",2,
					["7:Certainly!","3:Maybe later...."])
				
				}
			}break
		
			case 1:{ // квест взят
				if(_hasInformation){
					// мы завершаем квест
					NewTextBox("And so this creature is dead...",2)
					NewTextBox("Thank you for avenging my brother",2)
					global.questStatus[? "TheBrotherDeadCat"] = 2 // завершаем квест		
					global.playerMoney += 500
				
					// повышаем уровень
					//if(global.level != 3) global.level++
					//global.strong = true // даём силу
					audio_play_sound(sndEndMission,5,false)
				}
				else{
					// мы напоминаем что надо сделать или даём подсказку
					NewTextBox("Go and kill that bastard",2)					
				}
			}break
		
			case 2:{ // квест завершён
				// благодарим и т.д.
				NewTextBox("I'm glad you killed this creature",2)
				NewTextBox("I hope the one who called her into our world\nburn in hell ...",2)
			}break
		
			//case -1:{
			//	NewTextBox("Сьебался нахуй от сюда!!!!!!",2)
			//}
		
		}
	}
	else NewTextBox("Where did my brother go...",2)
	}
}
