// если камень не в руках и в полёте то наносим урон
if other.z !=0 and !global.iLifted{
	 HurtEnemy(id,other.damage,other.id,25)	 
}