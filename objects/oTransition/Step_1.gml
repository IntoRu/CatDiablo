
with(oPlayer){
	if(state != PlayerStateDead) state = PlayerStateTransition
} 

if(leading == OUT){
	percent = min(1,percent + TRANSITION_SPEED)
	if(percent >= 1){ //экран полностью затемнён
		room_goto(target)
		leading = IN
	}
}
else{
	percent = max(0,percent - TRANSITION_SPEED)
	if(percent <= 0){ //экран полностью раскрыт
		with(oPlayer) state = PlayerStateFree
		instance_destroy()
	}
}