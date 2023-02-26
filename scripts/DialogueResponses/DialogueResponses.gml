
///@arg Response

function DialogueResponses(){
	switch(argument0){
		//квест шляпа
		case 0: break
		case 1:{// мы согласились на квест
			audio_play_sound(sndQuestHatStart,5,false)
			NewTextBox("Спасибо",2)
			NewTextBox("Я думаю что я потерял свою шляпу в пещере",2)
			NewTextBox("Вход в пещеру в речной долине",2)
			NewTextBox("В меню паузы ты увидишь текущие задания",2)
			global.questStatus[? "TheHatQuest"] = 1 // меняем статус авеста на взят
		}break
		case 2:{// не согласились на квест
			////NewTextBox("Да и хуй с тобой ленивая мразь!\nСам всё сделаю!!!",2)
			//NewTextBox("Получай скатина!!!",2)
			//audio_play_sound(sndQuestLoss,5,false)
			//// при желании нпс может обидется и в дальнейшем посылать нас на хуй(раскоментируй/закоментируй)
			////global.questStatus[? "TheHatQuest"] = -1
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
			NewTextBox("Я думаю ты справишься",2)
			NewTextBox("В меню паузы ты увидишь текущие задания",2)
			global.questStatus[? "TheDeadVillage"] = 1 // меняем статус авеста на взят
		}break
		case 6:{
			NewTextBox("Ну если что я тут.....",2)
		}
		default: break
	}
}