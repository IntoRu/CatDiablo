///@desc скрываем коллизию

layer_set_visible("Col",false)

//уничтожаем обьекты в листе(те которые мы уничтожили)

for(i=0;i<array_length(global.entityDeath);i++){
	instance_deactivate_object(global.entityDeath[i])
}

audio_stop_all()
switch(room){
	case rTitle: audio_play_sound(sndRoomTitle,5,true);break
	//case rStory: audio_play_sound(sndStory,5,false); break
	//case rStory: audio_sound_gain(sndStory,5,1000); break
	case rStory:{
		var _snd = audio_play_sound(sndStory,5,false)
		audio_sound_gain(_snd,0,0)
		audio_sound_gain(_snd,0.5,20000)
	}break
	case rNewVillage: audio_play_sound(sndRoomVillage,5,true);break
	case rShop: audio_play_sound(sndRoomShop,5,true);break
	case rRiver: audio_play_sound(sndRoomRiver,5,true);break
	case rCave: audio_play_sound(sndRoomCave,5,true);break
	case rForest: audio_play_sound(sndRoomForest,5,true);break
	case rCaveInForest: audio_play_sound(sndRoomCaveInForest,5,true);break
	case rHouseBrotherCat: audio_play_sound(sndRoomShop,5,true);break
	case rStrangeHome: audio_play_sound(sndStrangeHome,5,true);break
}

// спавним джойстик (виртуальный)
instance_create_layer(10,135,"Instances",oLeft)
instance_create_layer(60,135,"Instances",oRight)
instance_create_layer(41,110,"Instances",oUp)
instance_create_layer(41,148,"Instances",oDown)














