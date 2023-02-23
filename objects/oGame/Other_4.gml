///@desc скрываем коллизию

layer_set_visible("Col",false)


 //уничтожаем обьекты в листе(те которые мы уничтожили)
//for(i = 0; i < ds_list_size(global.testDeath); i++){
//	instance_deactivate_object(ds_list_find_value(global.testDeath,i))
	
//}

for(i=0;i<array_length(global.entityDeath);i++){
	instance_deactivate_object(global.entityDeath[i])
}


