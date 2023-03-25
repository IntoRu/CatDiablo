///@desc динамическая смена дня и ночи

//if global.day == 0{
//	global.lightNight += speedDayNight
//	if global.lightNight >= maxLightNight global.day = 1
//}

//if global.day == 1{
//	global.lightNight -= speedDayNight
//	if global.lightNight <= 0 global.day = 0
//}





if global.day == 0{
	global.lightNight += speedDayNight
	if global.lightNight >= maxLightNight{
		global.lightNight = maxLightNight
		if global.lightNight == maxLightNight{
			timerDay --
			if timerDay <= 0 {
				global.day = 1
				timerDay = maxTimerDay
			}
		}
	} 
}

if global.day == 1{
	global.lightNight -= speedDayNight
	if global.lightNight <= 0{
		global.lightNight = 0
		if global.lightNight == 0{
			timerDay--
			if timerDay <= 0{
				global.day = 0
			}
		}	
	} 
}




