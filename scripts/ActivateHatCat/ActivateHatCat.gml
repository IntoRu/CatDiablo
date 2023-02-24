// активация квеста
function ActivateHatCat(){
	var _hasHat = (global.iLifted != noone) && (global.iLifted.object_index == oHat)
	switch(global.questStatus[? "TheHatQuest"]){
		
		case 0: { // квест ещё не начат
			if(_hasHat){ // если у нас есть шляпа
				// мы завершаем квест
				NewTextBox("Ахуеть, ты нашёл мою шляпу!!!",2)
				NewTextBox("Ты читаешь мои мысли чувак!!!",2)
				global.questStatus[? "TheHatQuest"] = 2 // завершаем квест
				//global.level = LEVEL2 // при желании можно добавить уровень и т д
				with(oQuestNPC) sprite_index = sQuesty_Hat
				with(oHat) instance_destroy()
				global.iLifted = noone
				
				global.spriteIdle[LEVEL0] = sPlayer
				global.spriteIdle[LEVEL1] = sPlayerL1
				global.spriteIdle[LEVEL2] = sPlayerL2
				global.spriteIdle[LEVEL3] = sPlayerL3

				global.spriteRun[LEVEL0] = sPlayerRun
				global.spriteRun[LEVEL1] = sPlayerRunL1
				global.spriteRun[LEVEL2] = sPlayerRunL2
				global.spriteRun[LEVEL3] = sPlayerRunL3
				// повышаем уровень
				//if(global.level != 3) global.level++
			}
			else{
				// предлагаем квест
				NewTextBox("Привет. Ты похож на героя!\nМне как раз нужен такой как ты!",2)
				NewTextBox("Поможешь мне найти моя шляпу???",2,
				["1:Конечно!","2:Иди нахуй придурок!!!!","3:Возможно позже...."])
				
			}
		}break
		
		case 1:{ // квест взят
			if(_hasHat){
				// мы завершаем квест
				NewTextBox("Оооо... Это то что мне нужно",2)
				NewTextBox("С меня магарычь...",2)
				global.questStatus[? "TheHatQuest"] = 2 // завершаем квест
				//global.level = LEVEL3 // при желании можно добавить уровень и т д
				with(oQuestNPC) sprite_index = sQuesty_Hat
				with(oHat) instance_destroy()
				global.iLifted = noone
				
				global.spriteIdle[LEVEL0] = sPlayer
				global.spriteIdle[LEVEL1] = sPlayerL1
				global.spriteIdle[LEVEL2] = sPlayerL2
				global.spriteIdle[LEVEL3] = sPlayerL3

				global.spriteRun[LEVEL0] = sPlayerRun
				global.spriteRun[LEVEL1] = sPlayerRunL1
				global.spriteRun[LEVEL2] = sPlayerRunL2
				global.spriteRun[LEVEL3] = sPlayerRunL3
				
				global.level++
			}
			else{
				// мы напоминаем что надо сделать или даём подсказку
				NewTextBox("Я думаю что я потерял свою шляпу в пещере",2)
				NewTextBox("Тебе может понадобятся некоторые предметы!",2)
			}
		}break
		
		case 2:{ // квест завершён
			// благодарим и т.д.
			NewTextBox("О спасибо чувак!\nТы реально крут!!!",2)
		}break
		
		case -1:{
			NewTextBox("Сьебался нахуй от сюда!!!!!!",2)
		}
		
	}
}