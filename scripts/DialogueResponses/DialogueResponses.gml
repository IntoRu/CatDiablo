
///@arg Response

function DialogueResponses(){
	switch(argument0){
		//case 0: break
		//case 1: NewTextBox("Ты дал ответ А",1); break
		//case 2: NewTextBox("Ты дал ответ Б. Больше никаких ответов",1,["3:Да","0:Нет"]); break
		//case 3: NewTextBox("Спасибо за ответы",0); break
		
		//квест шляпа
		case 4:{// мы согласились на квест
			NewTextBox("Спасибо",2)
			NewTextBox("Я думаю что я потерял свою шляпу в пещере",2)
			global.questStatus[? "TheHatQuest"] = 1 // меняем статус авеста на взят
		}break
		case 5:{// не согласились на квест
			NewTextBox("Да и хуй с тобой ленивая мразь!\nСам всё сделаю!!!",2)
			// при желании нпс может обидется и в дальнейшем посылать нас на хуй(раскоментируй/закоментируй)
			global.questStatus[? "TheHatQuest"] = -1
		}break
		case 6:{ // повременить с квестом
			NewTextBox("Ну ты знаешь где меня найти.....",2)
		}
		default: break
	}
}