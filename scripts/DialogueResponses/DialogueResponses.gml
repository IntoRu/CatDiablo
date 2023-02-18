
///@arg Response

function DialogueResponses(){
	switch(argument0){
		case 0: break
		case 1: NewTextBox("Ты дал ответ А",1); break
		case 2: NewTextBox("Ты дал ответ Б. Больше никаких ответов",1,["3:Да","0:Нет"]); break
		case 3: NewTextBox("Спасибо за ответы",0); break
		default: break
	}
}