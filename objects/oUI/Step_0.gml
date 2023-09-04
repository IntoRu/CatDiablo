if global.local == "RU" {
pauseOption = ["Продолжить", "Сохранить и продолжить",
"Сохранить и выйти на рабочий стол","Выйти без сохранения","Начать новую игру"]
}
if global.local == "EN"{
pauseOption = ["Continue", "Save and Continue",
"Save and exit to desktop","Exit without saving","Start a new game"]
}

////для магического прогресс бара
//if currentAmount < maxAmount  currentAmount += 0.1
if sprite_index == sMagicBar image_xscale = global.currentAmount / global.maxAmount

//if instance_exists(oPlayer) and oPlayer.keyItemMagic and currentAmount == maxAmount currentAmount = 0