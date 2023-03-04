///@desc столкновение с игроком
if(instance_exists(oPlayer)) and (position_meeting(oPlayer.x,oPlayer.y,id)){
	if(!instance_exists(oTransition)) and (oPlayer.state != PlayerStateDead){
		global.targetRoom = targetRoom
		global.targetX = targetX
		global.targetY = targetY
		//if targetRoom == rForest and room = rNewVillage global.targetDirection = oPlayer.direction+90
		//else if targetRoom == rNewVillage and room = rForest global.targetDirection = oPlayer.direction-90
		//else if targetRoom == rCaveInForest and room = rForest global.targetDirection = oPlayer.direction-90
		//else if targetRoom == rForest and room = rCaveInForest global.targetDirection = oPlayer.direction+90
		 global.targetDirection = oPlayer.direction + dirPlayer
		with(oPlayer) state = PlayerStateTransition
		RoomTransition(TRANS_TYPE.SLIDE,targetRoom)
		instance_destroy()
	}
}