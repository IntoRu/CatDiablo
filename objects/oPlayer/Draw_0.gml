
// рисуем тень
draw_sprite(sShadow,0,x,y)

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

// рисуем восклицательный знак когда есть что активировать
if(readyMess) draw_sprite(sAttention,0,x+1,y-23)

