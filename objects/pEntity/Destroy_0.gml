///@desc отбрасываем осколки
if(entityFragmentCount > 0){
	fragmentArray = array_create(entityFragmentCount,entityFragment)
	DropItems(x,y,fragmentArray)
}

if(entityDropList != -1){
	DropItems(x,y,entityDropList)
}


// записываем в лист что бы потом удалить именно уничтоженные обьекты
//ds_list_add(global.testDeath,id)
array_push(global.entityDeath,id)
