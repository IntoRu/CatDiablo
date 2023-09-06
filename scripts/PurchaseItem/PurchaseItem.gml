// покупка 

function PurchaseItem(_item,_amount,_cost){
	if(global.playerMoney >= _cost){
		global.playerHasAnyItems = true
		global.playerItemUnlocked[_item] = true
		global.playerAmmo[_item] += _amount
		global.playerMoney -= _cost
		global.playerEquipped = _item
		
		
		if(_item == ITEM.HOOK) instance_destroy(activate)	
		
		var _desc = ""
		if global.local == "RU"{
		switch(_item){
			case ITEM.BOMB: _desc = "Пизда.. у нас теперь есть гранаты"; break
			case ITEM.BOW: _desc = "ООО... стрелы..."; break
			case ITEM.HOOK: _desc = "Нихеровый такой крюк"; break
			case ITEM.HILL: _desc = "Ну будет чем опохмелится"; break
			case ITEM.SHIT: _desc = "С этим щитом мне никакой враг не страшен";break
			//case SWORD.SIMPLESWORD: _desc = "Ух ты ржавый меч";break
			default: _desc = "Описание не найдено"; break
		}
		}
		if global.local == "EN"{
		switch(_item){
			case ITEM.BOMB: _desc = "Cunt.. we now have grenades"; break
			case ITEM.BOW: _desc = "OOO... arrows..."; break
			case ITEM.HOOK: _desc = "Such a fucking hook"; break
			case ITEM.HILL: _desc = "Well, it will be something to get drunk"; break
			case ITEM.SHIT: _desc = "With this shield, no enemy is afraid of me";break
			//case SWORD.SIMPLESWORD: _desc = "Ух ты ржавый меч";break
			default: _desc = "Description not found"; break
		}
		}
		NewTextBox(_desc,1)
	}else{
		if global.local == "RU" NewTextBox("Недостаточно золота",1)
		if global.local == "EN"	NewTextBox("Not enough gold",1)
	}
}

// покупка меча
function PurchaseSword(_sword,_cost){
	if(global.playerMoney >= _cost){
		
		global.playerMoney -= _cost
		
		
		// добавляем мечь
		global.swordEquipped = _sword
		
		
		if(_sword != SWORD.NONE) instance_destroy(activate)
		
		var _desc = ""
		if global.local == "RU"{
		switch(_sword){
			case SWORD.SIMPLESWORD: _desc = "Ух ты ржавый меч";break
			case SWORD.GOODSWORD: _desc = "А это уже хороший клинок";break
			default: _desc = "Описание не найдено"; break
		}
		}
		if global.local == "EN"{
		switch(_sword){
			case SWORD.SIMPLESWORD: _desc = "Wow rusty sword";break
			case SWORD.GOODSWORD: _desc = "And this is a good blade";break
			default: _desc = "Description not found"; break
		}
		}
		NewTextBox(_desc,1)
	}else{
		if global.local == "RU" NewTextBox("Недостаточно золота",1)
		if global.local == "EN" NewTextBox("Not enough gold",1)
	}
}

// покупка новых луков
function PurchaseNewBow(_newBow,_cost){
	if(global.playerMoney >= _cost){
		
		global.playerMoney -= _cost
		global.playerEquipped = ITEM.BOW
		global.playerHasAnyItems = true
		
		// при покупке любого лука даётся десять стрел (они же становятся доступны в мире)
		PurchaseItem(ITEM.BOW,10,0)
		
		
		
		// добавляем лук
		global.newBowEquipped = _newBow
		
		
		if(_newBow != BOW.NONE) instance_destroy(activate)
		
		var _desc = ""
		if global.local == "RU"{
		switch(_newBow){
			case BOW.SIMPLEBOW: _desc = "Ух ты простой лук";break
			case BOW.GOODBOW: _desc = "А это уже хороший лук";break
			default: _desc = "Описание не найдено"; break
		}
		}
		if global.local == "EN"{
		switch(_newBow){
			case BOW.SIMPLEBOW: _desc = "Wow simple bow";break
			case BOW.GOODBOW: _desc = "And that's a good bow.";break
			default: _desc = "Description not found"; break
		}
		}
		NewTextBox(_desc,1)
	}else{
		if global.local == "RU" NewTextBox("Недостаточно золота",1)
		if global.local == "EN" NewTextBox("Not enough gold",1)
	}
}

// покупка брони
function PurchaseArmor(_armor,_cost){
	if(global.playerMoney >= _cost){
		
		global.playerMoney -= _cost
		
		
		// добавляем мечь
		global.armorEquipped = _armor
		
		
		if(_armor != ARMOR.NONE) instance_destroy(activate)
		
		var _desc = ""
		if global.local == "RU"{
		switch(_armor){
			case ARMOR.SIMPLEARMOR: _desc = "Так себе броня";break
			case ARMOR.GOODARMOR: _desc = "Весьма хороший броник";break
			case ARMOR.BESTARMOR: _desc = "Отличная броня";break
			default: _desc = "Описание не найдено"; break
		}
		}
		if global.local == "EN"{
		switch(_armor){
			case ARMOR.SIMPLEARMOR: _desc = "So so armor";break
			case ARMOR.GOODARMOR: _desc = "Very good armor";break
			case ARMOR.BESTARMOR: _desc = "Excellent armor";break
			default: _desc = "Description not found"; break
		}
		}
		NewTextBox(_desc,1)
	}else{
		if global.local == "RU" NewTextBox("Недостаточно золота",1)
		if global.local == "EN" NewTextBox("Not enough gold",1)
	}
}

// покупка магических рун
function PurchaseMagic(_magic,_cost){
	if(global.playerMoney >= _cost){
		
		global.playerMoney -= _cost
		global.playerHasAnyItemsMagic = true
		global.playerItemUnlockedMagic[_magic] = true
		
		// добавляем руну
		global.playerEquippedMagic = _magic
		
		
		if(_magic != ITEMMAGIC.NONE) instance_destroy(activate)
		
		var _desc = ""
		if global.local == "RU"{
		switch(_magic){
			case ITEMMAGIC.FAERSINGL: _desc = "Руна огненного удара по врагу";break
			case ITEMMAGIC.FAERALL: _desc = "Руна массового огненного удара";break
			case ITEMMAGIC.HILL: _desc = "Руна полного исцеления";break
			default: _desc = "Описание не найдено"; break
		}
		}
		if global.local == "EN"{
		switch(_magic){
			case ITEMMAGIC.FAERSINGL: _desc = "Rune of Fiery Strike on the Enemy";break
			case ITEMMAGIC.FAERALL: _desc = "Rune of Massive Fire Strike";break
			case ITEMMAGIC.HILL: _desc = "Rune of Full Healing";break
			default: _desc = "Description not found"; break
		}
		}
		NewTextBox(_desc,1)
	}else{
		if global.local == "RU" NewTextBox("Недостаточно золота",1)
		if global.local == "EN" NewTextBox("Not enough gold",1)
	}
}


