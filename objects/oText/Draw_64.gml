///@desc рисуем текстовое сообщение
NineSliceBoxStretched(sTextBoxBg,x1,y1,x2,y2,backround)

draw_set_font(fText)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_set_color(c_black) // цвет текста

var _print = string_copy(messege,1,textProgress)

// рисуем ответы
if(responses[0] != -1) and (textProgress >= string_length(messege)){
	
	for(var i = 0; i < array_length_1d(responses); i++){
		_print += "\n"
		if(i == responseSelected) _print += "> "
		_print += responses[i]
		
		if(i == responseSelected) _print += " <"
	
	}
}

// рисуем текст с тенью
draw_text((x1+x2)/2,y1+8,_print)
draw_set_color(c_white)
draw_text((x1+x2)/2,y1+7,_print)


