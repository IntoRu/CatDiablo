// урон стрелы
var _entity = instance_place(x,y,pEntity)
var _break = false
if(_entity != noone){
	with(_entity){
		if(object_is_ancestor(object_index,pEnemy)){
			HurtEnemy(id,global.bowDamage,other.id,global.bowDistanceThrow[global.level])
			_break = true
		}
		else{
			if(entityHitScript != -1){
				script_execute(entityHitScript)
				_break = true
			}
		}
	}
	if(_break) instance_destroy()
}

// уничтожим обьект при выходе из камеры
var _cam = view_camera[0]
var _camX = camera_get_view_x(_cam)
var _camY = camera_get_view_y(_cam)
if(!point_in_rectangle(x,y,_camX,_camY,_camX+camera_get_view_width(_cam),_camY+camera_get_view_height(_cam))){
	instance_destroy()
}