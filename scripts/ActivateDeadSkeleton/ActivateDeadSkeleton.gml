// активация квеста синего слизня

function ActivateDeadSkeleton(){
	var _allSkeletonDead = global.countSkeleton == 5
	if global.local == "RU"{
	switch(global.questStatus[? "TheSkeleton"]){
		
		case 0: { // квест ещё не начат
			if(_allSkeletonDead){ // если мы всех ёбнули
				// мы завершаем квест
				NewTextBox("Ну ты реально крут братишка....",2)
				NewTextBox("Ты завалил всех костяных уродов!!!",2)
				global.questStatus[? "TheSkeleton"] = 2 // завершаем квест
				audio_play_sound(sndEndMission,5,false)
				global.playerMoney += 500
				NewTextBox("Ты доказал что достоин моей работёнки",2)
				NewTextBox("А теперь слушай меня внимательно....",2)
				NewTextBox("Я думаю кто то из местных причастен \n к появлению монстров....",2)
				NewTextBox("Я думаю их кто то призывает сюда. \n И мне кажется этот кто то - Котэ.",2)
				NewTextBox("Её друг хотел мне рассказать что - то \n важное про неё. Но не успел...",2)
				NewTextBox("Как ты сам знаешь - он мёртв.",2)
				NewTextBox("Дождись когда Котэ уйдёт и проберись в её дом. \n Возможно там мы найдём зацепки. ",2)
				global.friendCat = false
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
				audio_play_sound(sndEndMission,5,false)
				global.playerMoney += 500
				NewTextBox("Ты доказал что достоин моей работёнки",2)
				NewTextBox("А теперь слушай меня внимательно....",2)
				NewTextBox("Я думаю кто то из местных причастен \n к появлению монстров....",2)
				NewTextBox("Я думаю их кто то призывает сюда. \n И мне кажется этот кто то - Котэ.",2)
				NewTextBox("Её друг хотел мне рассказать что - то \n важное про неё. Но не успел...",2)
				NewTextBox("Как ты сам знаешь - он мёртв.",2)
				NewTextBox("Дождись когда Котэ уйдёт и проберись в её дом. \n Возможно там мы найдём зацепки. ",2)
				global.friendCat = false
			}
			else{
				// мы напоминаем что надо сделать или даём подсказку
				NewTextBox("Грёбанные скелеты шараёбятся возле моего дома",2)
				NewTextBox("И я не могу туда попасть",2)						
			}
		}break
		
		case 2:{ // квест завершён
			// благодарим и т.д.
			NewTextBox("Иди и обыщи дом Котэ....",2)
			global.friendCat = false
		}break	
	}
	
	//-----------------------------------------------------------
	}
	if global.local == "EN"{
	switch(global.questStatus[? "TheSkeleton"]){
		
		case 0: { // квест ещё не начат
			if(_allSkeletonDead){ // если мы всех ёбнули
				// мы завершаем квест
				NewTextBox("You are really cool bro...",2)
				NewTextBox("You killed all the bone freaks!!!",2)
				global.questStatus[? "TheSkeleton"] = 2 // завершаем квест
				audio_play_sound(sndEndMission,5,false)
				global.playerMoney += 500
				NewTextBox("You proved that you are worthy of my job",2)
				NewTextBox("Now listen to me carefully....",2)
				NewTextBox("I think one of the locals is involved in \n the appearance of monsters ....",2)
				NewTextBox("I think someone calls them here. \n And it seems to me that someone is Kote.",2)
				NewTextBox("Her friend wanted to tell me something important \n about her. But didn't make it...",2)
				NewTextBox("As you know, he is dead.",2)
				NewTextBox("Wait for Kote to leave and sneak into her house. \n Maybe we'll find clues there.",2)
				global.friendCat = false
			}
			else{
				// предлагаем квест
				NewTextBox("Hello. I heard you finished\n one evil creature...",2)
				NewTextBox("I have infa who is behind all this ...",2)
				NewTextBox("But first you have to prove that you are cool \n to deal with this problem",2)
				NewTextBox("My yard was taken over by skeletons...\n Kill them all and I will help you",2,
				["11:No problem!","12:I will think about it...."])
				
			}
		}break
		
		case 1:{ // квест взят
			if(_allSkeletonDead){
				// мы завершаем квест
				NewTextBox("You are really cool bro...",2)
				NewTextBox("You flunked all the bone freaks!!!",2)
				global.questStatus[? "TheSkeleton"] = 2 // завершаем квест
				audio_play_sound(sndEndMission,5,false)
				global.playerMoney += 500
				NewTextBox("You proved that you are worthy of my job",2)
				NewTextBox("Now listen to me carefully....",2)
				NewTextBox("I think one of the locals is involved in \n the appearance of monsters ....",2)
				NewTextBox("I think someone calls them here. \n And it seems to me that someone is Kote.",2)
				NewTextBox("Her friend wanted to tell me something important \n about her. But didn't make it...",2)
				NewTextBox("As you know, he is dead.",2)
				NewTextBox("Wait for Kote to leave and sneak into her house. \n Maybe we'll find clues there.",2)
				global.friendCat = false
			}
			else{
				// мы напоминаем что надо сделать или даём подсказку
				NewTextBox("Fucking skeletons crawling around my house",2)
				NewTextBox("And I can't get there",2)						
			}
		}break
		
		case 2:{ // квест завершён
			// благодарим и т.д.
			NewTextBox("Go and search Kote's house....",2)
			global.friendCat = false
		}break	
	}
	}
}
