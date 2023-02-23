
function RoomToAreaName(_room){
	switch(_room)
	{
		case rVillage: return "Деревня"; break;
		case rRiver: return "Речная долина"; break;
		case rCave: return "Пещера"; break;
		case rShop: return "Магазин"; break;
		default: return "Неизвестная облать"; break;
	}
}