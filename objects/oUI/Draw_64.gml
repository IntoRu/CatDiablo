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
var _xx, _yy

_xx = 8
_yy = 31
draw_sprite(sCoinUI,0,_xx,_yy)

// рисуем текст для монет
draw_set_color(c_black)
draw_set_font(fText)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
_xx += sprite_get_width(sCoin)+4
_yy = 27
var _str = string(global.playerMoney)
draw_text(_xx+1,_yy,_str)
draw_text(_xx-1,_yy,_str)
draw_text(_xx,_yy+1,_str)
draw_text(_xx,_yy-1,_str)
draw_set_color(c_white)
draw_text(_xx,_yy,_str)





