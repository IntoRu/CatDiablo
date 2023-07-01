
function RoomToAreaName(_room){
	if global.local == "RU"{
		switch(_room)
		{
			case rVillage: return "Деревня"; break;
			case rRiver: return "Речная долина"; break;
			case rCave: return "Пещера"; break;
			case rShop: return "Магазин"; break;
			case rNewVillage: return "Родная деревня"; break;
			case rForest: return "Лес"; break;
			case rCaveInForest: return "Неизвестная пещера"; break;
			case rHouseBrotherCat: return "Дом братьев котов"; break;
			case rStrangeHome: return "Двор незнакомца"; break;
			case rHouseFriendCat: return "Дом котэ"; break;
		
			default: return "Неизвестная облать"; break;
		}
	}
	if global.local == "EN"{
		switch(_room)
		{
			case rVillage: return "Village"; break;
			case rRiver: return "River valley"; break;
			case rCave: return "Cave"; break;
			case rShop: return "Shop"; break;
			case rNewVillage: return "Home village"; break;
			case rForest: return "Forest"; break;
			case rCaveInForest: return "Unknown cave"; break;
			case rHouseBrotherCat: return "House of cat brothers"; break;
			case rStrangeHome: return "Stranger's yard"; break;
			case rHouseFriendCat: return "Cat House"; break;
		
			default: return "Unknown area"; break;
		}	
	}
}