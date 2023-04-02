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
		switch(_item){
			case ITEM.BOMB: _desc = "Пизда.. у нас теперь есть гранаты"; break
			case ITEM.BOW: _desc = "Ага... луккккк..."; break
			case ITEM.HOOK: _desc = "Нихеровый такой крюк"; break
			case ITEM.HILL: _desc = "Ну будет чем опохмелится"; break
			case ITEM.SHIT: _desc = "С этим щитом мне никакой враг не страшен";break
			//case SWORD.SIMPLESWORD: _desc = "Ух ты ржавый меч";break
			default: _desc = "Описание не найдено"; break
		}
		NewTextBox(_desc,1)
	}else{
		NewTextBox("Недостаточно золота",1)
	}
}

// покупка меча
function PurchaseSword(_sword,_cost){
	if(global.playerMoney >= _cost){
		
		global.playerMoney -= _cost
		
		
		// добавляем мечь
		global.swordEquipped = _sword
		
		
		if(_sword == SWORD.SIMPLESWORD) instance_destroy(activate)
		
		var _desc = ""
		switch(_sword){
			
			case SWORD.SIMPLESWORD: _desc = "Ух ты ржавый меч";break
			default: _desc = "Описание не найдено"; break
		}
		NewTextBox(_desc,1)
	}else{
		NewTextBox("Недостаточно золота",1)
	}
}