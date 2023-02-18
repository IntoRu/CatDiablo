///@desc отбрасываем осколки
if(entityFragmentCount > 0){
	fragmentArray = array_create(entityFragmentCount,entityFragment)
	DropItems(x,y,fragmentArray)
}
// записываем в лист что бы потом удалить именно уничтоженные обьекты
listDead = id
ds_list_add(global.testDeath,listDead)
