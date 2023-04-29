if room == rStory exit

var _xx, _yy


// рисуем здоровье

var _playerHealth = global.playerHealth[global.level]
var _playerHealthMax = global.playerHealthMax[global.level]
var _playerHealthFrack = frac(_playerHealth)
_playerHealth -= _playerHealthFrack

for(var i = 1; i <= _playerHealthMax; i++){
	var _imageIndex = (i > _playerHealth)
	if(i == _playerHealth+1){
		_imageIndex += (_playerHealthFrack > 0)
		_imageIndex += (_playerHealthFrack > 0.25)
		_imageIndex += (_playerHealthFrack >0.5)
	}
	draw_sprite(sHealth,_imageIndex,8+((i-1)*16),8)
}

// рисуем монеты


_xx = 28
_yy = 31
draw_sprite(sCoinUI,0,_xx,_yy)

// рисуем текст для монет
draw_set_color(c_black)
draw_set_font(fText)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
_xx += sprite_get_width(sCoin)+4
_yy = 29
var _str = string(global.playerMoney)
draw_text(_xx+1,_yy,_str)
draw_text(_xx-1,_yy,_str)
draw_text(_xx,_yy+1,_str)
draw_text(_xx,_yy-1,_str)
draw_set_color(c_white)
draw_text(_xx,_yy,_str)

//рисуем предметы
_xx = 8
_yy = 24

draw_sprite(sItemUIBox,0,_xx,_yy){
	if(global.playerHasAnyItems){
		
		if global.playerEquipped != 2 draw_sprite(sItemUI,global.playerEquipped,_xx,_yy)
		
		
		
		// рисуем новый лук
		if global.newBowEquipped != BOW.NONE and global.playerEquipped == ITEM.BOW{
			draw_sprite(sNewBow,global.newBowEquipped,_xx,_yy)
			
			
		}
		
		// рисуем кол-во боеприпасов
		if(global.playerAmmo[global.playerEquipped] != -1){
			draw_set_font(fAmmo)
			draw_set_halign(fa_right)
			draw_set_valign(fa_bottom)
			draw_set_color(c_white)
			draw_text(
				_xx+sprite_get_width(sItemUIBox)+1,
				_yy+sprite_get_height(sItemUIBox)+1,
				string(global.playerAmmo[global.playerEquipped])
			)
		}
	}
}

// рисуем используемый мечь
_xx = 8
_yy = 44

	if (global.swordEquipped != SWORD.NONE){
		draw_sprite(sSword,global.swordEquipped,_xx,_yy)
	}




//рисуем меню паузы
if(global.gamePaused){
	draw_set_color(c_black)
	draw_set_alpha(0.75)
	draw_rectangle(0,0,RESOLUTION_W,RESOLUTION_H,false)
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_set_font(fTextNew)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	
	draw_text(RESOLUTION_W*0.5,RESOLUTION_H*0.5,"....ПАУЗА....")
	for(var i=0;i<array_length(pauseOption);i++){
			var _print = ""
			if(i==pauseOptionSelected){
				_print += "> "+pauseOption[i]+" <"
			}
			else{
				_print += pauseOption[i]
				draw_set_alpha(0.7)
			}
			draw_text(RESOLUTION_W*0.5,RESOLUTION_H*0.5+18+(i*12),_print)
			draw_set_alpha(1)
	}		
}

// рисуем задания по квесту
if(global.gamePaused){
	
	xx = 120
	yy = 20
	draw_set_font(fTextNew)
	draw_set_halign(fa_right)
	draw_set_valign(fa_bottom)
	draw_set_color(c_black)
	draw_text(xx+1,yy,"Текущие задания")
	draw_text(xx-1,yy,"Текущие задания")
	draw_text(xx,yy-1,"Текущие задания")
	draw_text(xx,yy+1,"Текущие задания")
	draw_set_color(c_white)
	draw_text(xx,yy,"Текущие задания")
	

	//if(!global.questStatus[? "TheMissingFriend"] == 1) and (!global.questStatus[? "TheDeadVillage"] == 1){
	//	xx = 80
	//	yy = 40
	//	draw_set_font(fTextQuest)
	//	draw_set_halign(fa_right)
	//	draw_set_valign(fa_bottom)
	//	draw_set_color(c_black)
	//	draw_text(xx+1,yy,"Заданий нет")
	//	draw_text(xx-1,yy,"Заданий нет")
	//	draw_text(xx,yy-1,"Заданий нет")
	//	draw_text(xx,yy+1,"Заданий нет")
	//	draw_set_color(c_blue)
	//	draw_text(xx,yy,"Заданий нет")
	//}
	
	    if(global.questStatus[? "TheMissingFriend"] == 1){
		xx = 10
		yy = 40
		draw_set_font(fTextNew)
		draw_set_halign(fa_left)
		draw_set_valign(fa_bottom)
		draw_set_color(c_black)
		draw_text(xx+1,yy,"Найти пропавшего друга")
		draw_text(xx-1,yy,"Найти пропавшего друга")
		draw_text(xx,yy-1,"Найти пропавшего друга")
		draw_text(xx,yy+1,"Найти пропавшего друга")
		draw_set_color(c_blue)
		draw_text(xx,yy,"Найти пропавшего друга")
	}
	if(global.questStatus[? "TheDeadVillage"] == 1){
		xx = 10
		yy = 55
		draw_set_font(fTextNew)
		draw_set_halign(fa_left)
		draw_set_valign(fa_bottom)
		draw_set_color(c_black)
		draw_text(xx+1,yy,"Убей всю нечисть")
		draw_text(xx-1,yy,"Убей всю нечисть")
		draw_text(xx,yy-1,"Убей всю нечисть")
		draw_text(xx,yy+1,"Убей всю нечисть")
		draw_set_color(c_blue)
		draw_text(xx,yy,"Убей всю нечисть")
	}
	if(global.questStatus[? "TheBrotherDeadCat"] == 1){
		xx = 10
		yy = 70
		draw_set_font(fTextNew)
		draw_set_halign(fa_left)
		draw_set_valign(fa_bottom)
		draw_set_color(c_black)
		draw_text(xx+1,yy,"Выследить и убить монстра")
		draw_text(xx-1,yy,"Выследить и убить монстра")
		draw_text(xx,yy-1,"Выследить и убить монстра")
		draw_text(xx,yy+1,"Выследить и убить монстра")
		draw_set_color(c_blue)
		draw_text(xx,yy,"Выследить и убить монстра")
	}
	//else{
	//	xx = 80
	//	yy = 40
	//	draw_set_font(fTextQuest)
	//	draw_set_halign(fa_right)
	//	draw_set_valign(fa_bottom)
	//	draw_set_color(c_black)
	//	draw_text(xx+1,yy,"Заданий нет")
	//	draw_text(xx-1,yy,"Заданий нет")
	//	draw_text(xx,yy-1,"Заданий нет")
	//	draw_text(xx,yy+1,"Заданий нет")
	//	draw_set_color(c_blue)
	//	draw_text(xx,yy,"Заданий нет")
	//}
}

// Рисуем название локации
if(global.gamePaused){
	xx = 250
	yy = 20
	draw_set_font(fTextNew)
	draw_set_halign(fa_right)
	draw_set_valign(fa_bottom)
	draw_set_color(c_black)
	var _str = RoomToAreaName(room)
	draw_text(xx+1,yy,_str)
	draw_text(xx-1,yy,_str)
	draw_text(xx,yy-1,_str)
	draw_text(xx,yy+1,_str)
	draw_set_color(c_green)
	draw_text(xx,yy,_str)
}
