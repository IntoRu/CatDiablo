// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DoorCaveInForest(){
	if instance_exists(oDoorClose){
		oSwitchDoorCaveInForest.image_index = 1
		instance_destroy(oDoorClose)
		audio_play_sound(sndDoorOpen,5,false)
	}
}