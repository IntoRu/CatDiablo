if global.local == "RU" {
pauseOption = ["Продолжить", "Сохранить и продолжить",
"Сохранить и выйти на рабочий стол","Выйти без сохранения","Начать новую игру"]
}
if global.local == "EN"{
pauseOption = ["Continue", "Save and Continue",
"Save and exit to desktop","Exit without saving","Start a new game"]
}

if sprite_index == sMagicBar image_xscale = global.currentAmount / global.maxAmount

// делае  прозрачными руны если их нельзя использовать
if global.currentAmount < global.mannaMagicHill alphaHill = 0.3
else alphaHill = 1

if global.currentAmount < global.mannaMagicSingl alphaSingl = 0.3
else alphaSingl = 1

if global.currentAmount < global.mannaMagicAll alphaAll = 0.3
else alphaAll = 1

