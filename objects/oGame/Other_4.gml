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
if room != rStory{
	instance_create_layer(18,123,"Instances",oLeft)
	instance_create_layer(58,123,"Instances",oRight)
	instance_create_layer(30,110,"Instances",oUp)
	instance_create_layer(31,151,"Instances",oDown)
	instance_create_layer(280,15,"Instances",oMenu)
	instance_create_layer(265,131,"Instances",oSpace)
	instance_create_layer(230,120,"Instances",oShift)
	instance_create_layer(255,100,"Instances",oCtrl)
	instance_create_layer(285,98,"Instances",oQ)

}













