///@desc скрываем коллизию

layer_set_visible("Col",false)

 //уничтожаем обьекты в листе(те которые мы уничтожили)
//for(i = 0; i < ds_list_size(global.testDeath); i++){
//	instance_deactivate_object(ds_list_find_value(global.testDeath,i))
	
//}

for(i=0;i<array_length(global.entityDeath);i++){
	instance_deactivate_object(global.entityDeath[i])
}

audio_stop_all()
switch(room){
	case rTitle:audio_play_sound(sndRoomTitle,5,true);break
	case rNewVillage: audio_play_sound(sndRoomVillage,5,true);break
	case rShop: audio_play_sound(sndRoomShop,5,true);break
	case rRiver: audio_play_sound(sndRoomRiver,5,true);break
	case rCave: audio_play_sound(sndRoomCave,5,true);break
	case rForest: audio_play_sound(sndRoomForest,5,true);break
	case rCaveInForest: audio_play_sound(sndRoomCaveInForest,5,true);break
}


