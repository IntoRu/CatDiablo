// активация квеста синего слизня

function ActivateDeadSkeleton(){
	var _allSkeletonDead = global.countSkeleton == 5
	switch(global.questStatus[? "TheSkeleton"]){
		
		case 0: { // квест ещё не начат
			if(_allSkeletonDead){ // если мы всех ёбнули
				// мы завершаем квест
				NewTextBox("Ну ты реально крут братишка....",2)
				NewTextBox("Ты завалил всех костяных уродов!!!",2)
				global.questStatus[? "TheSkeleton"] = 2 // завершаем квест
				audio_play_sound(sndQuestHatComplited,5,false)
				global.playerMoney += 500
				NewTextBox("Ты доказал что достоин моей работёнки",2)
				NewTextBox("Эта работёнка на стадии написания",2)
			}
			else{
				// предлагаем квест
				NewTextBox("Привет. Я слышал ты прикончил\n одну злобную тварь...",2)
				NewTextBox("У меня есть инфа кто стоит за всем этим...",2)
				NewTextBox("Но сначала ты должен доказать что ты крут \n что бы разобраться с этой проблемой",2)
				NewTextBox("Мой двор аккупировали скелеты...\n Убей их всех и я помогу тебе",2,
				["11:Да без проблем!","12:Я подумаю  об этом...."])
				
			}
		}break
		
		case 1:{ // квест взят
			if(_allSkeletonDead){
				// мы завершаем квест
				NewTextBox("Ну ты реально крут братишка....",2)
				NewTextBox("Ты завалил всех костяных уродов!!!",2)
				global.questStatus[? "TheSkeleton"] = 2 // завершаем квест
				audio_play_sound(sndQuestHatComplited,5,false)
				global.playerMoney += 500
				NewTextBox("Ты доказал что достоин моей работёнки",2)
				NewTextBox("Эта работёнка на стадии написания",2)
			}
			else{
				// мы напоминаем что надо сделать или даём подсказку
				NewTextBox("Грёбанные скелеты шараёбятся возле моего дома",2)
				NewTextBox("И я не могу туда попасть",2)						
			}
		}break
		
		case 2:{ // квест завершён
			// благодарим и т.д.
			NewTextBox("Эта работёнка на стадии написания",2)
		}break	
	}
}
