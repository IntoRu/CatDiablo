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


//_xx = 28
//_yy = 31

_xx = 270
_yy = 2
draw_sprite(sCoinUI,0,_xx,_yy)

// рисуем текст для монет
draw_set_color(c_black)
draw_set_font(fText)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

//_xx += sprite_get_width(sCoin)+4
//_yy = 29
_xx += sprite_get_width(sCoin)+4
_yy = 2

var _str = string(global.playerMoney)
draw_text(_xx+1,_yy,_str)
draw_text(_xx-1,_yy,_str)
draw_text(_xx,_yy+1,_str)
draw_text(_xx,_yy-1,_str)
draw_set_color(c_white)
draw_text(_xx,_yy,_str)

//рисуем предметы
//_xx = 8
//_yy = 24

_xx = 90
_yy = 1

if global.playerHasAnyItems draw_sprite(sItemUIBox,0,_xx,_yy)
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


// рисуем используемый мечь
//_xx = 8
//_yy = 44
_xx = 1
_yy = 20

	if (global.swordEquipped != SWORD.NONE){
		draw_sprite(sSword,global.swordEquipped,_xx,_yy)
	}

// рисуем ключь от погреба у кота дома
//_xx = 8
//_yy = 70

_xx = 245
_yy = 2

if global.key == true draw_sprite(sKey,0,_xx,_yy)

// --------//-------------//---------------//------------//

// рисуем магические предметы
// рисуем бох для магических предметов
_xx = 130
_yy = 1

if global.playerHasAnyItemsMagic
{
	// бокс
	draw_sprite(sItemUIBoxMagic,0,_xx,_yy)
	// прогресс бар
	draw_sprite(sMagicBarBG,0,_xx+17,_yy+8)
	draw_sprite_ext(sMagicBar,0,_xx+22,_yy+8,global.currentAmount / global.maxAmount,image_yscale,image_angle,image_blend,image_alpha)
	// рисуем руны
	//draw_sprite(sItemUIMagic,global.playerEquippedMagic,_xx,_yy-1)
	//draw_sprite_ext(sItemUIMagic,global.playerEquippedMagic,_xx,_yy-1,image_xscale,image_yscale,image_angle,image_blend,alpha)
	// делае  прозрачными руны если их нельзя использовать
	if global.playerEquippedMagic == ITEMMAGIC.FAERSINGL draw_sprite_ext(sItemUIMagic,global.playerEquippedMagic,_xx,_yy-1,image_xscale,image_yscale,image_angle,image_blend,alphaSingl)
	if global.playerEquippedMagic == ITEMMAGIC.FAERALL draw_sprite_ext(sItemUIMagic,global.playerEquippedMagic,_xx,_yy-1,image_xscale,image_yscale,image_angle,image_blend,alphaAll)
	if global.playerEquippedMagic == ITEMMAGIC.HILL draw_sprite_ext(sItemUIMagic,global.playerEquippedMagic,_xx,_yy-1,image_xscale,image_yscale,image_angle,image_blend,alphaHill)
	

	
}



// --------//-------------//---------------//------------//
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
	
	if global.local == "RU" draw_text(RESOLUTION_W*0.5,RESOLUTION_H*0.5,"....ПАУЗА....")
	if global.local == "EN" draw_text(RESOLUTION_W*0.5,RESOLUTION_H*0.5,"....PAUSE....")
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
	if global.local == "RU"{
	draw_text(xx+1,yy,"Текущие задания")
	draw_text(xx-1,yy,"Текущие задания")
	draw_text(xx,yy-1,"Текущие задания")
	draw_text(xx,yy+1,"Текущие задания")
	draw_set_color(c_white)
	draw_text(xx,yy,"Текущие задания")
	}
	if global.local == "EN"{
	draw_text(xx+1,yy,"Current tasks")
	draw_text(xx-1,yy,"Current tasks")
	draw_text(xx,yy-1,"Current tasks")
	draw_text(xx,yy+1,"Current tasks")
	draw_set_color(c_white)
	draw_text(xx,yy,"Current tasks")
	}
	

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
		if global.local == "RU"{
		draw_text(xx+1,yy,"Найти пропавшего друга")
		draw_text(xx-1,yy,"Найти пропавшего друга")
		draw_text(xx,yy-1,"Найти пропавшего друга")
		draw_text(xx,yy+1,"Найти пропавшего друга")
		draw_set_color(c_blue)
		draw_text(xx,yy,"Найти пропавшего друга")
		}
		if global.local == "EN"{
		draw_text(xx+1,yy,"Find a missing friend")
		draw_text(xx-1,yy,"Find a missing friend")
		draw_text(xx,yy-1,"Find a missing friend")
		draw_text(xx,yy+1,"Find a missing friend")
		draw_set_color(c_blue)
		draw_text(xx,yy,"Find a missing friend")
		}
	}
	if(global.questStatus[? "TheDeadVillage"] == 1){
		xx = 10
		yy = 55
		draw_set_font(fTextNew)
		draw_set_halign(fa_left)
		draw_set_valign(fa_bottom)
		draw_set_color(c_black)
		if global.local == "RU"{
		draw_text(xx+1,yy,"Убей всю нечисть")
		draw_text(xx-1,yy,"Убей всю нечисть")
		draw_text(xx,yy-1,"Убей всю нечисть")
		draw_text(xx,yy+1,"Убей всю нечисть")
		draw_set_color(c_blue)
		draw_text(xx,yy,"Убей всю нечисть")
		}
		if global.local == "EN"{
		draw_text(xx+1,yy,"Kill all evil")
		draw_text(xx-1,yy,"Kill all evil")
		draw_text(xx,yy-1,"Kill all evil")
		draw_text(xx,yy+1,"Kill all evil")
		draw_set_color(c_blue)
		draw_text(xx,yy,"Kill all evil")
		}
	}
	if(global.questStatus[? "TheBrotherDeadCat"] == 1){
		xx = 10
		yy = 70
		draw_set_font(fTextNew)
		draw_set_halign(fa_left)
		draw_set_valign(fa_bottom)
		draw_set_color(c_black)
		if global.local == "RU"{
		draw_text(xx+1,yy,"Выследить и убить монстра")
		draw_text(xx-1,yy,"Выследить и убить монстра")
		draw_text(xx,yy-1,"Выследить и убить монстра")
		draw_text(xx,yy+1,"Выследить и убить монстра")
		draw_set_color(c_blue)
		draw_text(xx,yy,"Выследить и убить монстра")
		}
		if global.local == "EN"{
		draw_text(xx+1,yy,"Track down and kill the monster")
		draw_text(xx-1,yy,"Track down and kill the monster")
		draw_text(xx,yy-1,"Track down and kill the monster")
		draw_text(xx,yy+1,"Track down and kill the monster")
		draw_set_color(c_blue)
		draw_text(xx,yy,"Track down and kill the monster")
		}
	}
	if(global.questStatus[? "TheSkeleton"] == 1){
		xx = 10
		yy = 70
		draw_set_font(fTextNew)
		draw_set_halign(fa_left)
		draw_set_valign(fa_bottom)
		draw_set_color(c_black)
		if global.local == "RU"{
		draw_text(xx+1,yy,"Очистить двор от скелетов")
		draw_text(xx-1,yy,"Очистить двор от скелетов")
		draw_text(xx,yy-1,"Очистить двор от скелетов")
		draw_text(xx,yy+1,"Очистить двор от скелетов")
		draw_set_color(c_blue)
		draw_text(xx,yy,"Очистить двор от скелетов")
		}
		if global.local == "EN"{
		draw_text(xx+1,yy,"Clear the yard of skeletons")
		draw_text(xx-1,yy,"Clear the yard of skeletons")
		draw_text(xx,yy-1,"Clear the yard of skeletons")
		draw_text(xx,yy+1,"Clear the yard of skeletons")
		draw_set_color(c_blue)
		draw_text(xx,yy,"Clear the yard of skeletons")
		}
	}
	if(global.questStatus[? "HouseSearch"] == 1){
		xx = 10
		yy = 70
		draw_set_font(fTextNew)
		draw_set_halign(fa_left)
		draw_set_valign(fa_bottom)
		draw_set_color(c_black)
		if global.local == "RU"{
		draw_text(xx+1,yy,"Обыскать дом Котэ")
		draw_text(xx-1,yy,"Обыскать дом Котэ")
		draw_text(xx,yy-1,"Обыскать дом Котэ")
		draw_text(xx,yy+1,"Обыскать дом Котэ")
		draw_set_color(c_blue)
		draw_text(xx,yy,"Обыскать дом Котэ")
		}
		if global.local == "EN"{
		draw_text(xx+1,yy,"Search Kote's house")
		draw_text(xx-1,yy,"Search Kote's house")
		draw_text(xx,yy-1,"Search Kote's house")
		draw_text(xx,yy+1,"Search Kote's house")
		draw_set_color(c_blue)
		draw_text(xx,yy,"Search Kote's house")
		}
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
