///@desc динамическая смена дня и ночи

if day == 0{
	global.lightNight += speedDayNight
	if global.lightNight >= maxLightNight day = 1
}

if day == 1{
	global.lightNight -= speedDayNight
	if global.lightNight <= 0 day = 0
}

