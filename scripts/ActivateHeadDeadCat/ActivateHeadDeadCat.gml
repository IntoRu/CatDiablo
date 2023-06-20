// активация квеста про пропавшего друга

function ActivateHeadDeadCat(){
	var _hasHat = (global.iLifted != noone) && (global.iLifted.object_index == oHeadDeadCat)
	if global.local == "RU"{
	switch(global.questStatus[? "TheMissingFriend"]){
		
		case 0: { // квест ещё не начат
			if(_hasHat){ // если у нас есть шляпа
				// мы завершаем квест
				NewTextBox("Боже.... Что у тебя в руках???",2)
				NewTextBox("О нет, только не это!!!",2)
				NewTextBox("Бедный, бедный мой дружище!!!",2)
				NewTextBox("Тебе нужно навестить его брата\nи рассказать о случившемся",2)
				NewTextBox("Он живёт на северо-востоке от сюда...",2)
				global.questStatus[? "TheMissingFriend"] = 2 // завершаем квест

				//with(oQuestNPC) sprite_index = sQuesty_Hat
				with(oHeadDeadCat) instance_destroy()
				global.iLifted = noone
				
				global.spriteIdle[LEVEL0] = sPlayer
				global.spriteIdle[LEVEL1] = sPlayerL1
				global.spriteIdle[LEVEL2] = sPlayerL2
				global.spriteIdle[LEVEL3] = sPlayerL3

				global.spriteRun[LEVEL0] = sPlayerRun
				global.spriteRun[LEVEL1] = sPlayerRunL1
				global.spriteRun[LEVEL2] = sPlayerRunL2
				global.spriteRun[LEVEL3] = sPlayerRunL3
				audio_play_sound(sndQuestHatComplited,5,false)
				global.playerMoney += 100
				//// повышаем уровень
				//if(global.level != 3) global.level++
			}
			else{
				// предлагаем квест
				NewTextBox("Привет. Ты похож на героя!\nМне как раз нужен такой как ты!",2)
				NewTextBox("Поможешь мне найти моего друга???",2,
				["1:Конечно!","3:Возможно позже...."])
				
			}
		}break
		
		case 1:{ // квест взят
			if(_hasHat){
				// мы завершаем квест
				NewTextBox("Оооо... нет...нет...",2)
				NewTextBox("Кто мог это сделать с ним???",2)
				NewTextBox("Тебе нужно навестить его брата\nи рассказать о случившемся",2)
				NewTextBox("Он живёт на северо-востоке от сюда...",2)
				global.questStatus[? "TheMissingFriend"] = 2 // завершаем квест
				global.hasQuest = false
				//with(oQuestNPC) sprite_index = sQuesty_Hat
				with(oHeadDeadCat) instance_destroy()
				global.iLifted = noone
				
				global.spriteIdle[LEVEL0] = sPlayer
				global.spriteIdle[LEVEL1] = sPlayerL1
				global.spriteIdle[LEVEL2] = sPlayerL2
				global.spriteIdle[LEVEL3] = sPlayerL3

				global.spriteRun[LEVEL0] = sPlayerRun
				global.spriteRun[LEVEL1] = sPlayerRunL1
				global.spriteRun[LEVEL2] = sPlayerRunL2
				global.spriteRun[LEVEL3] = sPlayerRunL3
				
				global.playerMoney += 200
				
				// повышаем уровень
				//if(global.level != 3) global.level++
				audio_play_sound(sndQuestHatComplited,5,false)
			}
			else{
				// мы напоминаем что надо сделать или даём подсказку
				NewTextBox("Я думаю что он в пещере",2)
				NewTextBox("Вход в пещеру в речной долине",2)
				NewTextBox("Тебе может понадобятся некоторые предметы!",2)						
			}
		}break
		
		case 2:{ // квест завершён
			// благодарим и т.д.
			NewTextBox("Тебе нужно навестить его брата\nи рассказать о случившемся",2)
			NewTextBox("Он живёт на северо-востоке от сюда...",2)
		}break
		
		//case -1:{
		//	NewTextBox("Сьебался нахуй от сюда!!!!!!",2)
		//}
		
	}
	}
	if global.local == "EN"{
	switch(global.questStatus[? "TheMissingFriend"]){
		
		case 0: { // квест ещё не начат
			if(_hasHat){ // если у нас есть шляпа
				// мы завершаем квест
				NewTextBox("God.... What do you have in your hands???",2)
				NewTextBox("Oh no not this!!!",2)
				NewTextBox("Poor, poor my friend!!!",2)
				NewTextBox("You need to visit his brother\nand tell what happened",2)
				NewTextBox("He lives northeast of here...",2)
				global.questStatus[? "TheMissingFriend"] = 2 // завершаем квест

				//with(oQuestNPC) sprite_index = sQuesty_Hat
				with(oHeadDeadCat) instance_destroy()
				global.iLifted = noone
				
				global.spriteIdle[LEVEL0] = sPlayer
				global.spriteIdle[LEVEL1] = sPlayerL1
				global.spriteIdle[LEVEL2] = sPlayerL2
				global.spriteIdle[LEVEL3] = sPlayerL3

				global.spriteRun[LEVEL0] = sPlayerRun
				global.spriteRun[LEVEL1] = sPlayerRunL1
				global.spriteRun[LEVEL2] = sPlayerRunL2
				global.spriteRun[LEVEL3] = sPlayerRunL3
				audio_play_sound(sndQuestHatComplited,5,false)
				global.playerMoney += 100
				//// повышаем уровень
				//if(global.level != 3) global.level++
			}
			else{
				// предлагаем квест
				NewTextBox("Hello. You look like a hero!\nI just need someone like you!",2)
				NewTextBox("Can you help me find my friend???",2,
				["1:Certainly!","3:Maybe later...."])
				
			}
		}break
		
		case 1:{ // квест взят
			if(_hasHat){
				// мы завершаем квест
				NewTextBox("Oooh... no... no...",2)
				NewTextBox("Who could do this to him???",2)
				NewTextBox("You need to visit his brother\nand tell what happened",2)
				NewTextBox("He lives northeast of here...",2)
				global.questStatus[? "TheMissingFriend"] = 2 // завершаем квест
				global.hasQuest = false
				//with(oQuestNPC) sprite_index = sQuesty_Hat
				with(oHeadDeadCat) instance_destroy()
				global.iLifted = noone
				
				global.spriteIdle[LEVEL0] = sPlayer
				global.spriteIdle[LEVEL1] = sPlayerL1
				global.spriteIdle[LEVEL2] = sPlayerL2
				global.spriteIdle[LEVEL3] = sPlayerL3

				global.spriteRun[LEVEL0] = sPlayerRun
				global.spriteRun[LEVEL1] = sPlayerRunL1
				global.spriteRun[LEVEL2] = sPlayerRunL2
				global.spriteRun[LEVEL3] = sPlayerRunL3
				
				global.playerMoney += 200
				
				// повышаем уровень
				//if(global.level != 3) global.level++
				audio_play_sound(sndQuestHatComplited,5,false)
			}
			else{
				// мы напоминаем что надо сделать или даём подсказку
				NewTextBox("I think he's in a cave",2)
				NewTextBox("Entrance to a cave in a river valley",2)
				NewTextBox("You may need some items!",2)						
			}
		}break
		
		case 2:{ // квест завершён
			// благодарим и т.д.
			NewTextBox("You need to visit his brother\nand tell what happened",2)
			NewTextBox("He lives northeast of here...",2)
		}break
		
		//case -1:{
		//	NewTextBox("Сьебался нахуй от сюда!!!!!!",2)
		//}
		
	}
	}
}
