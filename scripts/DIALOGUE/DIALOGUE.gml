#region квест пропавшего друга
// Найти пропавшего друга коту
// для квеста пропавшего дркга
global.questStatus = ds_map_create() // создаётся один раз для всех квестов
global.questStatus[? "TheMissingFriend"] = 0 // квест не начат(1- начат 2 завершён)
#endregion 


#region квест синего слизня
// убить всех врагов в родной деревне
global.count = 0 // сколько врагов убито
global.questStatus[? "TheDeadVillage"] = 0 // квест не начат(1- начат 2 завершён)
// не забываем прописать в загрузке и сохранении статус квестов
#endregion

#region квест брата
// будет базироватся на основе инфы после убийства монстра в пещере в лесу
global.informationAboutMonster = false
global.questStatus[? "TheBrotherDeadCat"] = 0
#endregion