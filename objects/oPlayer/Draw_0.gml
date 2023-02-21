
// рисуем тень
draw_sprite(sShadow,0,x,y)

if(state == PlayerStateHook) and (image_index != 3) DrawHookChain()

// рисуем мигание при уроне
if(invulnerable != 0) and ((invulnerable mod 8 < 2) == 0) and (flash == 0){
	
}
else{
	
	if(flash != 0){
		shader_set(flashShader)
		uFlash = shader_get_uniform(flashShader,"flash")
		shader_set_uniform_f(uFlash,flash)
	}
	// рисуем игрока
	draw_sprite_ext(
	sprite_index,image_index,
	floor(x),floor(y-z),
	image_xscale,image_yscale,image_angle,
	image_blend,image_alpha
	)
	
	if(shader_current() != -1) shader_reset()
}

if(state == PlayerStateHook) and (image_index == 3) DrawHookChain()


// рисуем восклицательный знак когда есть что активировать
if(readyMess) draw_sprite(sAttention,0,x+1,y-23)

function DrawHookChain(){
	var _originX = floor(x)
	var _originY = floor(y)-7
	
	var _chains = hook div hookSize
	var _hookDirX = sign(hookX)
	var _hookDirY = sign(hookY)
	
	for(var i=0;i<_chains;i++){
		draw_sprite(
			sHookChain,
			0,
			_originX+hookX-(i*hookSize*_hookDirX),
			_originY+hookY-(i*hookSize*_hookDirY)
		)
	}
	draw_sprite(sHookBlade,image_index,_originX+hookX,_originY+hookY)
	
}

