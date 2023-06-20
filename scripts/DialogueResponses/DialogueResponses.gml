
///@arg Response

function DialogueResponses(){
	if global.local == "RU"{
	switch(argument0){
		//квест пропавшего друга
		case 0: break
		case 1:{// мы согласились на квест
			audio_play_sound(sndQuestHatStart,5,false)
			NewTextBox("Спасибо",2)
			NewTextBox("Я думаю что он пошёл в пещеру...",2)
			NewTextBox("Вход в пещеру в речной долине",2)
			NewTextBox("В меню паузы ты увидишь текущие задания",2)
			global.questStatus[? "TheMissingFriend"] = 1 // меняем статус авеста на взят
		}break
		case 2:{// не согласились на квест
			////NewTextBox("Да и хуй с тобой ленивая мразь!\nСам всё сделаю!!!",2)
			//NewTextBox("Получай скатина!!!",2)
			//audio_play_sound(sndQuestLoss,5,false)
			//// при желании нпс может обидется и в дальнейшем посылать нас на хуй(раскоментируй/закоментируй)
			////global.questStatus[? "TheMissingFriend"] = -1
			//HurtPlayer(point_direction(x,y,oPlayer.x,oPlayer.y),0.25,20)
		}break
		case 3:{ // повременить с квестом
			NewTextBox("Ну ты знаешь где меня найти.....",2)
		}break
		case 4:{ // покупка товара
			PurchaseItem(activate.item,activate.itemAmount,activate.itemCost)
		}break
		
		// квест синего слизняка
		case 5:{
			audio_play_sound(sndQuestHatStart,5,false)
			NewTextBox("Отлично",2)
			NewTextBox("Я думаю ты справишься. Используй камни",2)
			NewTextBox("В меню паузы ты увидишь текущие задания",2)
			global.questStatus[? "TheDeadVillage"] = 1 // меняем статус авеста на взят
		}break
		case 6:{
			NewTextBox("Ну если что я тут.....",2)
		}break
		// квест мёртвого брата
		case 7:{
			NewTextBox("В той пещере, куда попёрся мой братец\nобитают только слизни и летучие мыши",2)
			NewTextBox("И я не думаю что они способны сотворить такое......",2)
			NewTextBox("Очевидно это дело рук более сильного монстра.....",2)
			NewTextBox("Выследи и убей эту тварь.......\nа я в долгу не останусь....",2)
			NewTextBox("В меню паузы ты увидишь текущие задания",2)
			audio_play_sound(sndQuestHatStart,5,false)	
			global.questStatus[? "TheBrotherDeadCat"] = 1 // меняем статус авеста на взят
		}break
		// покупка мечей
		case 8:{
			PurchaseSword(activate.sword,activate.itemCost)
		}break
		// покупка новых луков
		case 9:{
			PurchaseNewBow(activate.newBow,activate.itemCost)
		}break
		// покупка брони
		case 10:{
			PurchaseArmor(activate.armor,activate.itemCost)
		}break
		// квест незнакомца
		case 11:{
			audio_play_sound(sndQuestHatStart,5,false)
			NewTextBox("Очень хорошо",2)
			NewTextBox("Вход в мой двор завален камнями...\n и я даю тебе силу что бы их раскидать",2)
			global.strong = true // даём силу
			NewTextBox("В меню паузы ты увидишь текущие задания",2)
			global.questStatus[? "TheSkeleton"] = 1 // меняем статус авеста на взят
		}break
		case 12:{
			NewTextBox("Ну если что я тут.....",2)
		}break
		default: break
	}
	}
	//-----------------------------------------------------------------------------------------------------------
	if global.local == "EN"{
	switch(argument0){
		//квест пропавшего друга
		case 0: break
		case 1:{// мы согласились на квест
			audio_play_sound(sndQuestHatStart,5,false)
			NewTextBox("Thank you",2)
			NewTextBox("I think he went to the cave...",2)
			NewTextBox("Entrance to a cave in a river valley",2)
			NewTextBox("In the pause menu you will see the current tasks",2)
			global.questStatus[? "TheMissingFriend"] = 1 // меняем статус авеста на взят
		}break
		case 2:{// не согласились на квест
			////NewTextBox("Да и хуй с тобой ленивая мразь!\nСам всё сделаю!!!",2)
			//NewTextBox("Получай скатина!!!",2)
			//audio_play_sound(sndQuestLoss,5,false)
			//// при желании нпс может обидется и в дальнейшем посылать нас на хуй(раскоментируй/закоментируй)
			////global.questStatus[? "TheMissingFriend"] = -1
			//HurtPlayer(point_direction(x,y,oPlayer.x,oPlayer.y),0.25,20)
		}break
		case 3:{ // повременить с квестом
			NewTextBox("Well, you know where to find me...",2)
		}break
		case 4:{ // покупка товара
			PurchaseItem(activate.item,activate.itemAmount,activate.itemCost)
		}break
		
		// квест синего слизняка
		case 5:{
			audio_play_sound(sndQuestHatStart,5,false)
			NewTextBox("Great",2)
			NewTextBox("I think you can do it. Use the stones",2)
			NewTextBox("In the pause menu you will see the current tasks",2)
			global.questStatus[? "TheDeadVillage"] = 1 // меняем статус авеста на взят
		}break
		case 6:{
			NewTextBox("Well, if I'm here...",2)
		}break
		// квест мёртвого брата
		case 7:{
			NewTextBox("In the cave where my brother got into\nonly slugs and bats live",2)
			NewTextBox("And I don't think they can do that....",2)
			NewTextBox("Obviously this is the work of a stronger monster .....",2)
			NewTextBox("Hunt down and kill this creature.......\nAnd I won't be in debt...",2)
			NewTextBox("In the pause menu you will see the current tasks",2)
			audio_play_sound(sndQuestHatStart,5,false)	
			global.questStatus[? "TheBrotherDeadCat"] = 1 // меняем статус авеста на взят
		}break
		// покупка мечей
		case 8:{
			PurchaseSword(activate.sword,activate.itemCost)
		}break
		// покупка новых луков
		case 9:{
			PurchaseNewBow(activate.newBow,activate.itemCost)
		}break
		// покупка брони
		case 10:{
			PurchaseArmor(activate.armor,activate.itemCost)
		}break
		// квест незнакомца
		case 11:{
			audio_play_sound(sndQuestHatStart,5,false)
			NewTextBox("Very good",2)
			NewTextBox("The entrance to my yard is littered with stones...\n and I give you the strength to scatter them",2)
			global.strong = true // даём силу
			NewTextBox("In the pause menu you will see the current tasks",2)
			global.questStatus[? "TheSkeleton"] = 1 // меняем статус авеста на взят
		}break
		case 12:{
			NewTextBox("Well, if I'm here...",2)
		}break
		default: break
	}
	}
}