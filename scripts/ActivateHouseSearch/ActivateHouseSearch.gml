// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ActivateHouseSearch(){
	if global.local = "RU"
	{
		switch (global.questStatus[? "HouseSearch"])
		{
			// если квест активировался
			case 1:
			{
				NewTextBox("Иди и обыщи дом Котэ....",2)
			}
			break
		}
	}
	
	if global.local = "EN"
	{
		switch (global.questStatus[? "HouseSearch"])
		{
			// если квест активировался
			case 1:
			{  
				NewTextBox("Go and search Kote's house....",2)
			}
			break
		}
	}
}