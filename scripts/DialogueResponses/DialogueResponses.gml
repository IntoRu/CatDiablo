
///@arg Response

function DialogueResponses(){
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
			NewTextBox("Я думаю ты справишься",2)
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
		}
		default: break
		// покупка новых луков
		case 9:{
			PurchaseNewBow(activate.newBow,activate.itemCost)
		}
		// покупка брони
		case 10:{
			PurchaseArmor(activate.armor,activate.itemCost)
		}
		default: break
	}
}