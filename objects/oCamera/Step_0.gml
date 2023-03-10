//@desc обновление камеры

if(instance_exists(follow)){
	xTo = follow.x
	yTo = follow.y
}

x += (xTo - x)
y += (yTo -y)

// камера в ценре комнаты
x = clamp(x,viewWidthHalf,room_width - viewWidthHalf)
y = clamp(y,viewHeightHalf,room_height - viewHeightHalf)

// встряска
x += random_range(-shakeRemain,shakeRemain)
y += random_range(-shakeRemain,shakeRemain)

shakeRemain = max(0,shakeRemain - ((1/shakeLength)*shakeMagnitude))

camera_set_view_pos(cam,x-viewWidthHalf,y-viewHeightHalf)



