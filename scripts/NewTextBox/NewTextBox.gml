
///@arg text
///@arg background
///@arg [Responses]

function NewTextBox(){
	var _obj
	if(instance_exists(oText)) _obj = oTextQueued
	else _obj = oText
	
	with(instance_create_layer(0,0,"Instances",_obj)){
		messege = argument[0]
		if(instance_exists(other)) originInstances = other.id
		else originInstances = noone
		if(argument_count > 1) backround = argument[1]
		else backround = 1
		
		var _array = argument[2]
		for(var _i=0;_i<array_length(_array);_i++){
			responses[_i] = _array[_i]
		}
		
		if(argument_count > 2){
			for(var i=0;i<array_length_1d(responses);i++){
				var _markerPosition = string_pos(":",responses[i])
				responseScripts[i] = string_copy(responses[i],1,_markerPosition-1)
				responseScripts[i] = real(responseScripts[i])
				responses[i] = string_delete(responses[i],1,_markerPosition)	
			}
		}
		else{
			responses = [-1]
			responseScripts = [-1]
		}
	}
	
	with(oPlayer){
		if(state != PlayerStateLocked){
			lastState = state
			state = PlayerStateLocked
		}
	}
}