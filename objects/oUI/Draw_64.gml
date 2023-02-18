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
