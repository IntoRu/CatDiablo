lerpProgress += (1 - lerpProgress)/50
textProgress += textSpeed

x1 = lerp(x1,x1Target,lerpProgress)
x2 = lerp(x2,x2Target,lerpProgress)

// переходим в игру как музыка закончится
if !audio_is_playing(sndStory) RoomTransition(TRANS_TYPE.SLIDE,ROOM_NEW_GAME)
